# Deploying an Azure AI Core Subscription using Terraform

This is a repo for the Core Subscription to host shared services for an Azure AI deployment.

List of Azure resources created with Terraform:

- Resource Group for Private DNS Zone
- Private DNS Zone for Azure OpenAI
- Private DNS Zone for Azure AI Search
- Private DNS Zone for Azure Storage Account (Blob, DFS, Table)
- Private DNS Zone for SQL Server Databases
- Private DNS Zone for PostgreSQL Databases
- Private DNS Zone for Azure Key Vault
- Private DNS Zone for Azure Machine Learning
- Private DNS Zone for Azure App Services (Function/WebApp)

**Note:** You can deploy all these services on the same subscription as your Azure AI Services.
