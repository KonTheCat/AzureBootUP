#This is intended to set up some virtual machines to act as back-ends for an app gateway lab. 
#network stuff is based on this: https://learn.microsoft.com/en-us/azure/virtual-network/quick-create-powershell
#vm stuff is based on https://learn.microsoft.com/en-us/powershell/module/az.compute/new-azvm?view=azps-10.0.0#example-5-creating-a-new-vm-with-an-existing-subnet-in-another-resource-group

$publicSettings = @{ "fileUris" = (,"https://raw.githubusercontent.com/Azure/azure-docs-powershell-samples/master/application-gateway/iis/appgatewayurl.ps1");  
"commandToExecute" = "powershell -ExecutionPolicy Unrestricted -File appgatewayurl.ps1" }
$vms = "vm1", "vm2", "vm3"
$rgName = 'AppGWLab' #enter your own RG name
$location = 'EastUS2'
$vmSize = 'Standard_D4s_v3' 
$UserName = "testtest" #enter your own username
$Password = ConvertTo-SecureString 'v78Y7`#H9w;G' -AsPlainText -Force #enter a complex password
$psCred = New-Object System.Management.Automation.PSCredential($UserName, $Password)

$RG = New-AzResourceGroup -Name $rgName -Location $location

$vnet = @{
    Name = "Vnet"
    ResourceGroupName = $RG.ResourceGroupName
    Location = $RG.Location
    AddressPrefix = '10.0.0.0/16'
}
$virtualNetwork = New-AzVirtualNetwork @vnet

$subnet = @{
    Name = 'appGW'
    VirtualNetwork = $virtualNetwork
    AddressPrefix = '10.0.0.0/24'
}
Add-AzVirtualNetworkSubnetConfig @subnet

$subnet = @{
    Name = 'backend'
    VirtualNetwork = $virtualNetwork
    AddressPrefix = '10.0.1.0/24'
}
Add-AzVirtualNetworkSubnetConfig @subnet
$virtualNetwork | Set-AzVirtualNetwork
$virtualNetwork = Get-AzVirtualNetwork -Name 'Vnet' -ResourceGroupName $RG.ResourceGroupName

$vmSubnet = $virtualNetwork.Subnets | Where-Object {$_.name -eq 'backend'} | Select-Object -ExpandProperty id

foreach ($vm in $vms) {
    $NIC = New-AzNetworkInterface -Name "$vm-NIC" -ResourceGroupName $RG.ResourceGroupName -Location $RG.Location -SubnetId $vmSubnet
    $VirtualMachine = New-AzVMConfig -VMName $vm -VMSize $vmSize
    $VirtualMachine = Set-AzVMOperatingSystem -VM $VirtualMachine -Windows -ComputerName $vm -Credential $psCred -ProvisionVMAgent -EnableAutoUpdate
    $VirtualMachine = Add-AzVMNetworkInterface -VM $VirtualMachine -Id $NIC.Id
    $VirtualMachine = Set-AzVMBootDiagnostic -VM $VirtualMachine -Enable
    $VirtualMachine = Set-AzVMSourceImage -VM $VirtualMachine -PublisherName 'MicrosoftWindowsServer' -Offer 'WindowsServer' -Skus '2022-datacenter-azure-edition-core' -Version latest
    New-AzVM -ResourceGroupName $RG.ResourceGroupName -Location $location -VM $VirtualMachine -AsJob
}

Get-Job | Wait-Job | Receive-Job
Start-Sleep -Seconds 60

foreach ($vm in $vms) {
    Set-AzVMExtension `
    -ResourceGroupName $rgName `
    -Location $location `
    -ExtensionName IIS `
    -VMName $vm `
    -Publisher Microsoft.Compute `
    -ExtensionType CustomScriptExtension `
    -TypeHandlerVersion 1.4 `
    -Settings $publicSettings -AsJob
}

Get-Job | Wait-Job | Receive-Job