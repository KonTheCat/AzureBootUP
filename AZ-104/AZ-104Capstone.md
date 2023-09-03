# AZ-104 Capstone

Due date: anytime before start of Azure Architect section. Reach out to me earlier rather than later at kon@konthecat.com if you want to present your solution live. 

The goal of this project is to demonstrate proficiency with Azure at or above the level required for the Azure Administrator certification. The goal is to do as much of this as you can. You should also feel free to enhance and extend wherever you see the opportunity. Submission is to include whatever code you used as a part of the deployment, screenshots of the implemented resources, and either a recorded video of you giving a walkthrough of your project or a live call to do the same. You will receive a detailed review of your project.

## Scenario:

ToSo Construction Inc is in the early stages of determining if they can effectively use Azure for some of their workloads. There are two projects they would like you to work on: a picture upload application and a load balanced VM web server solution. For both solutions, they require: 
1.	As much of the implementation as possible should be done with Bicep templates. Bicep templates may or may not use a parameter file. Deployment should be triggered by Azure PowerShell or Azure CLI.
2.	A custom role should be designed per project that includes the least permissions required to do basic troubleshooting on the solution: stop, start, restart, whatever else you think may be valuable.
3.	Resource names should follow a naming convention. 
4.	Best practices as far as the usage of resource groups should be followed. 
5.	Worry about deploying more than the production environment only if you have the time.
6.	You should include a mechanism for monitoring each solution to confirm that it can do what it is designed to do.

### Picture Upload Application: 
1.	Use the sample application code here: App code (https://github.com/KonTheCat/KonTheCat_BlobImageUploader) (This will be updated to be a simpler version of this application that has no interactions with Azure Cognitive Services.)
2.	Deploy at least two different instances of the app, use a service for load balancing.
3.	Use a custom DNS name for the front-end IP of the load balancer.
4.	Ensure that no credentials are saved in code or environment configuration as a part of this project. 
5.	Implement a mechanism for automatically decreasing the cost of storage of images not modified for more than 90 days. The storage cost needs to be as small as possible while still providing immediate accessibility to the files.

### Load Balanced VM Web Server Solution
1.	Implement 3 Windows IaaS servers. Install the web server role and configure a simple home page identifying the server without logging into the server console. Deploy the servers in a highly available configuration.
2.	Implement a load balancing solution. Use a custom DNS name for the front-end IP address.
3.	Ensure that you provide no more access to the web servers from outside the environment than is absolutely needed. 
