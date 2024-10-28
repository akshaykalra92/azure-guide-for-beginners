# Azure Resource Manager (ARM) Templates

## Overview
Azure Resource Manager (ARM) templates are JSON files used to define and deploy resources in Azure. They allow you to automate the deployment of your entire infrastructure, ensuring that resources are deployed consistently and repeatedly. By using ARM templates, you can codify your infrastructure setup, enabling infrastructure-as-code (IaC) practices.

### Key Features
- **Infrastructure as Code**: Define and deploy Azure resources in code, making configurations consistent and reusable.
- **Idempotent Deployments**: Ensures resources deploy only once, updating existing resources without duplicating.
- **Modularity and Nested Templates**: Split complex deployments into multiple, reusable templates.
- **Parameterization**: Allows you to customize templates for different environments with parameters.

For detailed documentation, refer to [Azure ARM Template Documentation](https://docs.microsoft.com/azure/azure-resource-manager/templates/overview).

---

## Getting Started

### Prerequisites
- **Azure Subscription**: [Sign up](https://azure.microsoft.com/free/) for an account if you don’t have one.
- **Azure CLI** or **PowerShell**: Install to deploy templates from the command line. Find the CLI installation guide [here](https://docs.microsoft.com/cli/azure/install-azure-cli).
- **Text Editor**: Use a code editor like VS Code with Azure extensions for easy template authoring.

---

## Template Structure

An ARM template consists of several key sections:
1. **$schema**: Defines the version of the template schema.
2. **contentVersion**: Specifies the template version.
3. **parameters**: Allows inputs to customize deployment.
4. **variables**: Defines reusable values and reduces redundancy.
5. **resources**: Contains the resource types to deploy.
6. **outputs**: Returns information about deployed resources.

Example ARM template:

```json
{
  "$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
  "contentVersion": "1.0.0.0",
  "parameters": {
    "storageAccountName": {
      "type": "string",
      "defaultValue": "mystorageacct"
    }
  },
  "variables": {
    "location": "[resourceGroup().location]"
  },
  "resources": [
    {
      "type": "Microsoft.Storage/storageAccounts",
      "apiVersion": "2019-06-01",
      "name": "[parameters('storageAccountName')]",
      "location": "[variables('location')]",
      "sku": {
        "name": "Standard_LRS"
      },
      "kind": "StorageV2",
      "properties": {}
    }
  ],
  "outputs": {
    "storageAccountEndpoint": {
      "type": "string",
      "value": "[reference(parameters('storageAccountName')).primaryEndpoints.blob]"
    }
  }
}
```
### Deployment Methods
You can deploy ARM templates through different methods:

1. Azure Portal
   In the Azure Portal, navigate to "Deploy a custom template" under Template Deployment.
   Upload or paste the template JSON and deploy.

2. Azure CLI
```bash
az group create --name myResourceGroup --location eastus
az deployment group create --resource-group myResourceGroup --template-file template.json
```
3. PowerShell
```bash
New-AzResourceGroup -Name myResourceGroup -Location "East US"
New-AzResourceGroupDeployment -ResourceGroupName myResourceGroup -TemplateFile "template.json"
```
4. Visual Studio Code
   Use the Azure Resource Manager (ARM) Tools extension to edit and deploy directly from VS Code.

