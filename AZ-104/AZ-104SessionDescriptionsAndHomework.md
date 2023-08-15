# Session Descriptions and Homework Assignments

AZ-104 is the foundational curriculum for understanding the Azure platform. There are several factors you should pay attention to above the details of every specific service: the overall structure of the Azure platform, general patterns of authentication and authorization, and how services interconnect/are used in combination to meet objectives. 

## Week 4 - Manage Identity, Understand the Two RBACs, Resource Hierarchy, Management and Governance, Tooling - 9/30 & 10/1/2023

### Description
We are going to spend some time with Azure Active Directory, the identity service and security perimeter for modern Azure implementations. We are going to discuss the two different models of Role-Based Access Control (RBAC): the one for Azure Active Directory and the one for Azure. We will understand the resource hierarchy in Azure and will look at some methodologies and for management and governance of the Azure platform. 

### Homework - due by start of first session of the week, unless otherwise stated
1. Make sure that you are registered for the AZ-104 exam, before end of day on 11/05/2023. It is critical to register now so that you can pick a date and time that works for you. Registering even earlier is advised.
    1. This is absolutely required. If for whatever reason you cannot do this please get in touch with me.
    2. Email me a screenshot of your exam registration. You may obscure whatever information you wish, I just need to see your name, what exam it is, and the date that you are scheduled for.
2. Complete this learning path: https://learn.microsoft.com/en-us/training/paths/az-104-manage-identities-governance/
3. Due before the start of the next week's lessons: In an email to me, answer the following questions using complete sentences that you wrote yourself:  
    1. What is the difference between a service and a resource? Can there be multiple resources with the same name? What about with the same ID? What is the difference between the ID and the name?
    2. What is the key difference between Role Based Access Control and Azure Policy? If you can only do a thorough implementation of one of these for an organization, which would you choose and why?
    3. What is an advantage of the Azure Resource Manager?
    4. Write a PowerShell or Azure CLI script that creates a custom role in a given subscription that meets the following requirement: A role that would enable the user to read everything relevant about an Azure Virtual Machine from a day to day support perspective and be able to stop, start, and change the size of the virtual machine. The role should use the least number of actions without providing too much access. Explain your choices in at least a few sentences.
    5. Why is resource lifecycle considered the best practice use case for resource groups? What are some alternatives and where do they fall short?