# Azure Virtual Machine Setup Guide

## Overview
This guide provides instructions on how to create a Virtual Machine (VM) in Azure and connect to it using different methods. The steps include using the Azure CLI and the Azure Portal.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Creating a Virtual Machine](#creating-a-virtual-machine)
    - [Using Azure CLI](#using-azure-cli)
    - [Using Azure Portal](#using-azure-portal)
- [Connecting to the Virtual Machine](#connecting-to-the-virtual-machine)
    - [Using SSH (Linux)](#using-ssh-linux)
    - [Using Remote Desktop (Windows)](#using-remote-desktop-windows)
- [Best Practices](#best-practices)
- [Resources](#resources)

---

## Prerequisites
- **Azure Subscription**: Sign up for an Azure account [here](https://azure.microsoft.com/free/).
- **Azure CLI**: Install the Azure CLI from [this link](https://docs.microsoft.com/cli/azure/install-azure-cli) if you plan to use command line tools.

## Creating a Virtual Machine

### Using Azure CLI
1. **Login to Azure**:
   ```bash
   az login


### Set variables:
RESOURCE_GROUP="<your-resource-group>"
VM_NAME="<your-vm-name>"
LOCATION="<your-location>"
IMAGE="<your-image>" # e.g., "UbuntuLTS" or "Win2019Datacenter"
SIZE="<your-vm-size>" # e.g., "Standard_DS1_v2"

### Create a resource group (if you don’t have one):
```bash
az group create --name $RESOURCE_GROUP --location $LOCATION
```
### Create the VM:

```bash
az vm create \
--resource-group $RESOURCE_GROUP \
--name $VM_NAME \
--image $IMAGE \
--size $SIZE \
--admin-username "<your-username>" \
--generate-ssh-keys
```

### Open port for SSH (Linux) or RDP (Windows):
# For SSH
az vm open-port --resource-group $RESOURCE_GROUP --name $VM_NAME --port 22

# For RDP (Windows)
az vm open-port --resource-group $RESOURCE_GROUP --name $VM_NAME --port 3389



Connecting to the Virtual Machine
Using SSH (Linux)
Get the public IP address:

```bash
az vm list-ip-addresses --resource-group $RESOURCE_GROUP --name $VM_NAME --query "[].virtualMachine.network.publicIpAddresses[0].ipAddress" -o tsv
```
### Connect via SSH:
ssh <your-username>@<public-ip-address>
