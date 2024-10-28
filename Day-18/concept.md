# Azure Service Bus Guide

## Overview
Azure Service Bus is a fully managed enterprise messaging service. It provides reliable messaging as a service (MaaS) and allows for asynchronous communication between distributed applications. Service Bus is suitable for both high-throughput and enterprise integration scenarios.

### Key Features
- **Queues**: For point-to-point messaging with guaranteed message delivery.
- **Topics and Subscriptions**: Enabling publish/subscribe messaging patterns.
- **Sessions, Transactions, and Dead-Lettering**: Advanced capabilities for complex message handling.

For more information, check the [Azure Service Bus Documentation](https://docs.microsoft.com/azure/service-bus-messaging/service-bus-messaging-overview).

---

## Getting Started

### Prerequisites
- **Azure Subscription**: If you don’t have one, [create a free account](https://azure.microsoft.com/free/).
- **Azure CLI**: Install the Azure CLI for managing Azure resources from the command line. See [installation instructions](https://docs.microsoft.com/cli/azure/install-azure-cli).
- **.NET SDK** (for C# code samples): Install the [.NET SDK](https://dotnet.microsoft.com/download).

### Step 1: Create a Service Bus Namespace and Queue
You can create a Service Bus Namespace and Queue either via the Azure Portal or using Azure CLI.

#### Using Azure CLI:
1. **Login to Azure**:
   ```bash
   az login

### Create a Resource Group:
   ```bash
az group create --name myResourceGroup --location eastus
```

### Create a Service Bus Namespace:
   ```bash
az servicebus namespace create --resource-group myResourceGroup --name myServiceBusNamespace --location eastus --sku Standard
```

### Create a Queue:
   ```bash
az servicebus queue create --resource-group myResourceGroup --namespace-name myServiceBusNamespace --name myQueue
```
### Step 2: Set Up Authentication
Azure Service Bus requires a connection string or Azure AD token for secure access. Retrieve the connection string using:
   ```bash
az servicebus namespace authorization-rule keys list --resource-group myResourceGroup --namespace-name myServiceBusNamespace --name RootManageSharedAccessKey --query primaryConnectionString --output tsv
```