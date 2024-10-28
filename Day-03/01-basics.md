# Azure Resources

Azure resources are the building blocks of your cloud infrastructure in Microsoft Azure. These resources can be virtual machines, databases, storage accounts, or any other service offered by Azure. Each resource is a manageable item in Azure, and they are provisioned and managed individually.

## Azure subscription
An Azure subscription is essentially an agreement between a user (or an organization) and Microsoft that provides access to Azure services. Each subscription allows you to manage and access resources like virtual machines, databases, and applications, with separate billing and resource management options.

### Key Components of an Azure Subscription

Resource Management: An Azure subscription is organized into resources, which can include virtual machines, databases, and storage accounts, all grouped in resource groups.

Billing and Cost Control: Each subscription has its own billing account, and you can monitor and control spending by setting budgets and alerts. Azure offers tools like the Cost Management tool to analyze and optimize costs.

Access Control: Subscriptions are tied to an Azure Active Directory (Azure AD) tenant, allowing organizations to manage user access and permissions through Role-Based Access Control (RBAC).

### Types of Azure Subscriptions
Free Subscription: Provides limited free access to Azure services for 12 months and a $200 credit for the first 30 days.

Pay-As-You-Go: Charges you only for the services you use, making it flexible and cost-efficient for production use.

Enterprise Agreement: Typically used by large organizations to get bulk pricing and support. It includes volume discounts and enhanced support services.

Microsoft Partner Network (MPN) Subscription: Offered to Microsoft partners to explore and demonstrate Azure solutions.

Student Subscription: Offers free credits and specific services at no charge for educational purposes.

### Managing Azure Subscriptions
Azure Portal: You can create, manage, and monitor subscriptions directly from the Azure Portal.

CLI and PowerShell: Command-line tools offer a programmatic way to manage subscriptions and automate common tasks.

Azure Cost Management: This tool provides detailed usage reports, budgeting, and forecasting capabilities for each subscription.

### Subscription Best Practices
Use Tags: Apply tags to resources to simplify organization, billing, and reporting.

Separate Subscriptions for Environments: Use different subscriptions for development, testing, and production environments to better control resources and costs.

Monitor and Optimize Costs: Regularly review spending and optimize resource usage to avoid unexpected costs.

## Resource Groups in Azure

A **Resource Group** in Azure is a logical container for resources that share the same lifecycle, permissions, and policies. It helps you organize and manage related Azure resources efficiently. Resources within a group can be deployed, updated, and deleted together as a single management unit.

### Key Points about Resource Groups:

- **Lifecycle Management:** Resources within a group can be managed collectively, making it easy to handle deployments, updates, and deletions.

- **Resource Organization:** Grouping resources based on projects, environments, or applications helps keep your Azure environment well-organized.

- **Role-Based Access Control (RBAC):** Permissions and access control are applied at the resource group level, allowing you to manage who can access and modify resources within a group.

## Azure Resource Manager (ARM) Overview

**Azure Resource Manager (ARM)** is the deployment and management service for Azure. It provides a consistent management layer that enables you to deploy resources with declarative templates. ARM templates describe the resources you need and their configurations, allowing you to deploy and update resources in a predictable manner.

### Key Features of Azure Resource Manager:

- **Template-Based Deployment:** ARM uses JSON templates to define the infrastructure and configuration of your Azure resources. This enables repeatable and consistent deployments.

- **Dependency Management:** ARM automatically handles dependencies between resources, ensuring they are deployed in the correct order.

- **Rollback and Roll-forward:** In case of deployment failures, ARM can automatically roll back changes to maintain the desired state, or roll forward to the last known good state.

- **Tagging and Categorization:** You can use tags to label and categorize resources, making it easier to manage and organize your Azure environment.

**Note:** Understanding Azure resources, resource groups, and Azure Resource Manager is fundamental to effectively utilize and manage your resources in the Azure cloud.

