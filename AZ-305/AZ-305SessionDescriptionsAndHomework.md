# Session Descriptions and Homework Assignments

AZ-305 covers the architect-level curriculum for the Azure platform. Having this certification alone is generally not enough to make a cloud architect, relevant experience is required. The goal with learning this content is to be able to understand, participate in, and eventually lead architecture efforts. The general goal of solution architecture is to translate a business problem or need into a technical infrastructure that can be implemented and that is optimized towards stated or otherwise existing requirements. 

## Week 10 - Governance, Compute Solutions  - 11/11 & 11/12/2023

### Description
This week we will begin the architect section of the curriculum. We will start with a review of governance approaches. Governance is fundamentally intended to verify that the environment conforms to the organizations expectations and needs for the environment, which can be needs of security, compliance, cost control, general organization, etc. We will also cover different compute solutions such as virtual machines and their derivatives, app services, function services and others from an architectural point of view.

### Homework
1. Due by start of first lesson: Complete these learning paths: 
    1. https://learn.microsoft.com/en-us/training/modules/design-governance/
    2. https://learn.microsoft.com/en-us/training/modules/design-compute-solution/
2. Bonus content - not required, but strongly advised:
    1. Future iteration on Blueprints: https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/deployment-stacks?tabs=azure-powershell
    2. Landing Zone: https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/landing-zone/
        1. Read above article, then click around in the larger CAF subject area and read whatever interests you. 

3. Due before the start of the next week's lessons: In an email to me, answer the following questions using complete sentences that you wrote yourself:
    1. What is the difference between Azure Policy and RBAC? If you could only implement one well in your organization, which would you choose and why? What would make you change your answer? 
    2. Why are decisions about resource group naming and resource placement so important in Azure?
    3. What are some best practice recommendations for implementing resource tags? What tags do you consider critical and why?
    4. What problem do management groups solve? 
    5. Compare and contrast situations in which you would choose a Virtual Machine or a Virtual Machine Scale Set for a solution.
    6. What are the major factors that would recommend towards using a container-based solution?
    7. What are the major factors that determine the cost-effectiveness of a compute solution?

## Week 11 - Data Solutions  - 11/18 & 11/19/2023

### Description
This week is all about data solutions. We will discuss solutions for relational (databases) or non-relational (blob, file, disk) data storage and processing. We will also discuss solutions for data integration.

### Homework
1. Due by start of first lesson: Complete these learning paths: 
    1. https://learn.microsoft.com/en-us/training/modules/design-data-storage-solution-for-non-relational-data/
    2. https://learn.microsoft.com/en-us/training/modules/design-data-storage-solution-for-relational-data/
    3. https://learn.microsoft.com/en-us/training/modules/design-data-integration/

2. Due before the start of the next week's lessons: In an email to me, answer the following questions using complete sentences that you wrote yourself:
    1. What are some considerations to work through when planning the use of storage accounts?
    2. What factors would guide you in deciding to use Azure Files vs. Managed Disks?
    3. What are the three different services for hosting SQL databases in Azure? What are the advantages and disadvantages of each?
    4. In what circumstances may a Serverless deployment of Azure SQL be a bad idea?
    5. What is the recommended approach for disaster recovery of Azure SQL in case of a regional failure? What are some advantages of this approach?
    6. In what circumstances might you use an Azure Data Factory?

## Week 12 - App Architecture, Authentication and Monitoring  - 11/25 & 11/26/2023

### Description
This week we will cover several topics in application architecture, authentication, logging, and monitoring. We are going to discuss message and event-based architectures, API management, caching, and managing application configuration information. We will also discuss approaches for authentication of users and services in Azure and the implementation of logging and monitoring. 

### Homework
1. Due by start of first lesson: Complete these learning paths, watch videos, etc: 
    1. https://learn.microsoft.com/en-us/training/modules/design-application-architecture
    2. https://learn.microsoft.com/en-us/training/modules/design-solution-to-log-monitor-azure-resources
    3. https://learn.microsoft.com/en-us/training/modules/design-authentication-authorization-solutions
        1. https://www.youtube.com/watch?v=WVNvoiA_ktw - While this level of knowledge is not required, it will be very useful to you. 

2. Due before the start of the next week's lessons: In an email to me, answer the following questions using complete sentences that you wrote yourself:
    1. Describe the difference between a message and an event.
    2. In which cases may you prefer to use an Azure Queue and not a Service Bus?
    3. What problems does Azure API Management solve?
    4. When might you not want to use a User-Assigned Managed Identity? 
    5. What are the possible data sources for which monitoring data may be collected in Azure?
    6. What is a Log Analytics account and what are some patterns for implementing this service?

## Week 13 - Networking, Backup, Disaster Recovery  - 12/2 & 12/3/2023

### Description
This week we will cover several topics in networking, backup and disaster recovery. We are going to discuss Azure network connectivity options and patterns, and the implementation of Azure Backup and Disaster Recovery.

### Homework
1. Due by start of first lesson: Complete these learning paths, watch videos, etc: 
    1. https://learn.microsoft.com/en-us/training/modules/design-network-solutions
    2. https://learn.microsoft.com/en-us/training/modules/design-solution-for-backup-disaster-recovery

2. Due before the start of the next week's lessons: In an email to me, answer the following questions using complete sentences that you wrote yourself:
    1. In what scenarios would you prefer to implement ExpressRoute vs. a VPN Gateway-based connection? 
    2. What problems is Azure Virtual WAN expected to solve?
    3. What are the main advantages and disadvantages of the hub and spoke network topology?
    4. How does outbound internet connectivity work in Azure by default? What are the options for managing that traffic? 
    5. What information do you need to effectively plan for backup and disaster recovery?
    6. If you have a VM environment and a lack of information from the business and can implement only Azure Backup or Azure Site Recovery, which would you choose and why? What kind of information would you need to be more confident in your choice?

## Week 14 - Migration and Capstone  - 12/9 & 12/10/2023

### Description
This week we will cover migration to Azure, both from a conceptual and a tooling perspective. The second day of this week is reserved for review of the capstone project and any topics the students may want reviewed.

### Homework
1. Due by start of first lesson: Complete these learning paths, watch videos, etc: 
    1. https://learn.microsoft.com/en-us/training/modules/design-migrations/
    2. https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/overview

2. Due before the start of the next week's lessons: In an email to me, answer the following questions using complete sentences that you wrote yourself:
    1. What are some aspects of the CAF that you did not expect/surprised you/interested you? 
    2. What are some different migration strategies? What kind of factors may drive different organizations to adopt different strategies for migrating the same workload?
    3. In what situations might you want to use an Azure Data Box Gateway, compared with AZCopy?