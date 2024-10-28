# Manage Azure Resources with Terraform

## Overview
Terraform by HashiCorp is an Infrastructure-as-Code (IaC) tool that allows you to define and provision infrastructure using a high-level configuration language. This README provides a guide for using Terraform to create, manage, and version Azure resources in a declarative manner.

### Key Features
- **Declarative Configuration**: Define what infrastructure you want, and Terraform will handle the provisioning.
- **Versioning**: Track infrastructure changes over time using version control.
- **Modularity**: Reuse configurations through modules, allowing you to build a consistent, maintainable infrastructure.

For more information, visit the [Terraform Documentation](https://www.terraform.io/docs/index.html) and [Azure Provider Documentation](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs).

---

## Getting Started

### Prerequisites
- **Azure Subscription**: If you don’t have one, [create a free account](https://azure.microsoft.com/free/).
- **Terraform**: Download and install Terraform from [here](https://www.terraform.io/downloads.html).
- **Azure CLI**: Install the Azure CLI to authenticate Terraform with Azure. Follow the installation guide [here](https://docs.microsoft.com/cli/azure/install-azure-cli).

---

## Basic Setup

### Step 1: Authenticate Terraform with Azure
First, login using the Azure CLI:
```bash
az login
```

If you're managing multiple Azure accounts, set the desired subscription:
```bash
az account set --subscription "your-subscription-id"
```
### Step 2: Create a Terraform Configuration File
A Terraform configuration file (e.g., main.tf) defines the resources you want to create.

Example main.tf file to create an Azure resource group:

```bash
# Configure the Azure provider
provider "azurerm" {
  features {}
}

# Define a Resource Group
resource "azurerm_resource_group" "example" {
  name     = "myResourceGroup"
  location = "East US"
}
```

### Step 3: Initialize Terraform
Initialize Terraform to download the necessary provider plugins (e.g., Azure provider):

```bash
terraform init
```
### Step 4: Plan the Deployment
Run a plan to preview the changes Terraform will make to your Azure environment:
```bash
terraform plan
```
### Step 5: Apply the Configuration
Apply the configuration to create the resources in Azure:

```bash
terraform apply
```
### Step 6: Destroy Resources (Optional)
To delete the resources created by Terraform, use the following command:
```bash
terraform destroy
```