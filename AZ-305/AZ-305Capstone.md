# AZ-305 Capstone: IoT Thing Co. Scenario

Goal: describe an environment that meets the below requirements and known best practices with English sentences, to the level of naming particular Azure resources. You may make some assumptions about application and client capabilities, such that application clients are able to determine where they are in the world and connect to back-ends accordingly. For extra bragging rights, write infrastructure templates that deploy some or all the infrastructure.
Critical considerations trump important considerations, important considerations trump expected considerations. You are allowed to, within reason, disagree with the specifics of the scenario, but you better serve a larger strategic goal and be right if you are doing so. A degree of snark is allowed, but you should be right. Unlike in general consulting practice, it is better to be honest about gaps and what would need to be understood to close them than to not disclose them. 

Scenario: IoT Thing Co. is, as you may have surmised, an IoT company. You are working for them as a consulting Azure architect, your major deliverable is what the CEO and CTO are calling their “Azure gameplan.” While the CEO and CTO have refused to discuss the precise nature of the application or business with you, you do know the following: 
1.	The company expects to operate in USA, Brazil, Europe and Australia. 
  a.	Users whose accounts are made in Europe, or who use a Europe-based identity provider for authentication, are expected to be limited to always connecting to the European infrastructure for compliance reasons. All other clients are expected to connect to their closest infrastructure.
2.	Cost control is important. The CTO got burned at several previous ventures by unexpected and unexplained cloud bills, this will not be happening again. Your solution needs to incorporate a design that will prevent the deployment of resources that are not a part of the solution and SKUs that are deemed too large without sacrificing the ability of developers to experiment and learn.
3.	Disaster recovery planning is critical. The company wishes to have disaster recovery capabilities within each of the countries it operates in, without fragmenting the data between different regions where that is avoidable.
4.	Environment separation and governance are important. Both the CEO and CTO expressed a desire to have very clear and non-permeable lines drawn between production, testing and development environments. It is acceptable for data movement between these environments to be manual and inconvenient. 
5.	These are the technical requirements: 
  a.	Implement a simple website.This website is to be used for marketing and account management tasks only. 
  b.	Implement an API that mobile (Android, iOS) clients would connect to. These clients will be used for managing the IoT devices.
  c.	Implement an IoT device back-end. This is to be used for IoT devices to communicate to the service, sending logs and receiving commands.
  d.	Log data is to be processed and stored in a database. The company is flexible on database choice, ultimately everyone knows SQL and is willing to learn a new service if there are significant advantages to doing so.
  e.	Users should be able to use their existing social identities or usernames and passwords they choose for authentication.

Notes: 
1.	You may find this reading material absolutely riveting: https://commission.europa.eu/law/law-topic/data-protection/reform/rules-business-and-organisations/obligations/what-rules-apply-if-my-organisation-transfers-data-outside-eu_en
