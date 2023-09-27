# Session Descriptions and Homework Assignments

AZ-104 is the foundational curriculum for understanding the Azure platform. There are several factors you should pay attention to above the details of every specific service: the overall structure of the Azure platform, general patterns of authentication and authorization, and how services interconnect/are used in combination to meet objectives. 

## Week 4 - Manage Identity, Understand the Two RBACs, Resource Hierarchy, Management and Governance, Tooling - 9/30 & 10/1/2023

### Description
We are going to spend some time with Azure Active Directory, the identity service and security perimeter for modern Azure implementations. We are going to discuss the two different models of Role-Based Access Control (RBAC): the one for Azure Active Directory and the one for Azure. We will understand the resource hierarchy in Azure and will look at some methodologies and for management and governance of the Azure platform. 

### Homework
1. Due by start of first lesson: Make sure that you are registered for the AZ-104 exam, before end of day on 11/05/2023. It is critical to register now so that you can pick a date and time that works for you. Registering even earlier is advised.
    1. This is absolutely required. If for whatever reason you cannot do this please get in touch with me.
    2. Email me a screenshot of your exam registration. You may obscure whatever information you wish, I just need to see your name, what exam it is, and the date that you are scheduled for.
2. Due by start of first lesson: Complete this learning path: https://learn.microsoft.com/en-us/training/paths/az-104-manage-identities-governance/
3. Due before the start of the next week's lessons: In an email to me, answer the following questions using complete sentences that you wrote yourself:  
    1. What is the difference between a service and a resource? Can there be multiple resources with the same name? What about with the same ID? What is the difference between the ID and the name?
    2. What is the key difference between Role Based Access Control and Azure Policy? If you can only do a thorough implementation of one of these for an organization, which would you choose and why?
    3. What is an advantage of the Azure Resource Manager?
    4. Write a PowerShell or Azure CLI script that creates a custom role in a given subscription that meets the following requirement: A role that would enable the user to read everything relevant about an Azure Virtual Machine from a day to day support perspective and be able to stop, start, and change the size of the virtual machine. The role should use the least number of actions without providing too much access. Explain your choices in at least a few sentences.
    5. Why is resource lifecycle considered the best practice use case for resource groups? What are some alternatives and where do they fall short?
4. Due before the start of the next week's lessons: Go through labs of lessons 1, 2, and 3 here: https://microsoftlearning.github.io/AZ-104-MicrosoftAzureAdministrator/

## Week 5 - Storage: Core Concepts, Additional Features, Storage Management Tools  - 10/7 & 10/8/2023

### Description
This week we are going to focus on the core storage services within Azure. We will discuss the storage account as a whole and blob and file services. The storage account implements some patterns that we will see throughout our Azure journey: separation between management and data operations, a resource firewall with public and private access options and different authentication options that are service-specific. Blob and file services are very frequently used in Azure environments, we will discuss the use cases and implementation methods of both.

### Homework
1. Due by start of first lesson: Complete this learning path: https://learn.microsoft.com/en-us/training/paths/az-104-manage-storage/
2. Due before the start of the next week's lessons: In an email to me, answer the following questions using complete sentences that you wrote yourself:
    1. Why are stored access policies useful?
    2. Is having access from anywhere enabled for a storage account a security problem? Why/why not? If it is a problem, what approaches short of disabling access may be taken to reduce/eliminate the risk?
    3. What are some fundamental factors to keep in mind when implementing Azure File shares? 
    4. If you have a requirement to prevent data from being deletable by users for some duration of time but need to allow administrators the flexibility of altering this configuration in the future, what might you do to accomplish this? 
    5. Why may it be it a good idea to copy an archive blob to a non-archived blob rather than to rehydrate an archived blob?
3. Due before the start of the next week's lessons: Go through labs of lesson 7 here: https://microsoftlearning.github.io/AZ-104-MicrosoftAzureAdministrator/

## Week 6 - Compute: Virtual Machines, VM Extensions & Features, VM Scale Set, App Service, Container Service, Azure Kubernetes Service  - 10/14 & 10/15/2023

### Description
This week we are going to focus on some of the key compute services available in Azure. We will begin with the virtual machine and will work our way through VM Scale Sets, App Services, Container Services and Azure Kubernetes Service. 

### Homework
1. Due by start of first lesson: Complete this learning path: https://learn.microsoft.com/en-us/training/paths/az-104-manage-compute-resources/
2. Due before the start of the next week's lessons: In an email to me, answer the following questions using complete sentences that you wrote yourself:
    1. Which compute service would you expect to have the highest total cost of ownership? Which would you expect to be the cheapest? What kind of factors would impact this calculation? 
    2. Is the custom script extension a potential security risk? If there are security risks, how might they be mitigated?
    3. What are some key differences between using Virtual Machines and a Virtual Machine Scale Set? 
    4. If you can use either availability zones or availability sets for your solution, which would you use and why? 
    5. What are some advantages of using a container service instead of an application service? What are some disadvantages?
3. Due before the start of the next week's lessons: Go through labs of lesson 8 and 9 here: https://microsoftlearning.github.io/AZ-104-MicrosoftAzureAdministrator/

## Week 7 - Networking: vNet, DNS, Network Security Groups, Custom Routing, Virtual Network Gateway, Load Balancer, App Gateway  - 10/21 & 10/22/2023

### Description
This week we will be focusing on Azure networking. We will begin with a single network and work our way to a hub and spoke topology. We will examine the different approaches that exist in Azure for restricting and directing network traffic, such as Network Security Groups and custom routing. Lastly, we will look at the different approaches that exist for distributing traffic between different instances or sets of compute. 

### Homework
1. Due by start of first lesson: Complete this learning path: https://learn.microsoft.com/en-us/training/paths/az-104-manage-virtual-networks/
2. Due before the start of the next week's lessons: In an email to me, answer the following questions using complete sentences that you wrote yourself:
    1. What is, from an administrative effort perspective, the easiest way to interconnect two Azure vNets? What might be the hardest? 
    2. In what circumstances do you need to worry about vNet address space overlap? In what circumstances can you ignore this concern? 
    3. What is the major difference between network security groups and user defined routes? Can one be used in place of the other?
    4. What is the major difference between a load balancer and an App Gateway? Can one replace the other? Which one is more generally applicable?
3. Due before the start of the next week's lessons: Go through labs of lessons 4, 5, and 6 here: https://microsoftlearning.github.io/AZ-104-MicrosoftAzureAdministrator/

## Week 8 - Backup, Disaster Recovery, and Monitoring  - 10/28 & 10/29/2023

### Description
This week we will review options for backup, disaster recovery, and monitoring within Azure. We will compare Azure Backup with Azure Site Recovery and get familiarized with the different approaches and capabilities available under the Azure Monitor umbrella. 

### Homework
1. Due by start of first lesson: Complete this learning path: https://learn.microsoft.com/en-us/training/paths/az-104-manage-virtual-networks/
2. Due before the start of the next week's lessons: In an email to me, answer the following questions using complete sentences that you wrote yourself:
    1. If you could implement only Azure Backup or Azure Site Recovery, which would you choose? What factors might make you reverse your choice? 
    2. What is different between how backups are done for Azure File shares and what one might expect from a traditional backup solution?
    3. What are some unique features and characteristics to keep in mind when implementing a Recovery Services vault? 
    4. Does Azure provide a uniform monitoring experience? How would you describe the overall experience to a coworker? 
3. Due before the start of the next week's lessons: Go through labs of lessons 10 and 11 here: https://microsoftlearning.github.io/AZ-104-MicrosoftAzureAdministrator/

## Week 9 - Take AZ-104 Exam - no sessions, next session is start of AZ-305 section on 11/11/2023

### Description

During this week and weekend you are expected to take the AZ-104 exam. Please treat this one seriously. Some say that this is harder than the architect certification after this one.  

### Homework

1. You may use the practice assessment for AZ-104 found here to practice: https://learn.microsoft.com/en-us/certifications/practice-assessments-for-microsoft-certifications#availability
2. Please complete the capstone before the start of the next section. It is designed to practice many of the areas we covered in this course.