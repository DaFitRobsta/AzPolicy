# Encrypt all VM disks

This policy encrypts virtual machine disks based on their Azure Security assessment code.

## Prerequisites

- An existing Key Vault
  - Key Vault name and resource group are required parameters when assigning the policy

## Try on Portal

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3a%2f%2fraw.githubusercontent.com%2fDaFitRobsta%2fAzPolicy%2fmain%2fVirtualMachines%2fEncryption%2fencryptVMdisks.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "encrypt-vm-disks" -DisplayName "[Custom] Encrypt VM disks based on Azure Security Center Encryption assessment state" -description "By default, a virtual machine's OS and data disks are encrypted-at-rest using platform-managed keys. Temp disks, data caches and data flowing between compute and storage aren't encrypted. Disregard this recommendation if: 1. using encryption-at-host, or 2. server-side encryption on Managed Disks meets your security requirements. Learn more in [Server-side encryption of Azure Disk Storage.](https://aka.ms/disksse), [Different disk encryption offerings]( https://aka.ms/diskencryptioncomparison)" -Policy 'https://raw.githubusercontent.com/DaFitRobsta/AzPolicy/main/VirtualMachines/Encryption/encryptVMdisks.rules.json' -Mode All -Metadata '{"category":"Security Center", "version":"1.0.0"}'

$definition

$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition

$assignment
````

## Try with CLI

````cli

az policy definition create --name 

````

## References

- [Azure Disk Encryption for Windows (Microsoft.Azure.Security.AzureDiskEncryption)](https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/azure-disk-enc-windows)
- [Azure Quickstart Templates - VM Disk Encryption](https://github.com/Azure/azure-quickstart-templates/blob/master/quickstarts/microsoft.compute/encrypt-running-windows-vm-without-aad/azuredeploy.json)
- [Creating and configuring a key vault for Azure Disk Encryption](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/disk-encryption-key-vault)
- [Create and configure a key vault for Azure Disk Encryption on a Windows VM](https://docs.microsoft.com/en-us/azure/virtual-machines/windows/disk-encryption-key-vault)


<!---
New-AzPolicyDefinition -Policy .\encryptVMdisks.rules.json -ManagementGroupName "75d2a19a-9a75-477c-ad38-39aec4180d00" -Name "encrypt-vm-disks" -DisplayName "[Custom] Encrypt VM disks based on Azure Security Center Encryption assessment state" -Description "By default, a virtual machine's OS and data disks are encrypted-at-rest using platform-managed keys. Temp disks, data caches and data flowing between compute and storage aren't encrypted. Disregard this recommendation if: 1. using encryption-at-host, or 2. server-side encryption on Managed Disks meets your security requirements. Learn more in [Server-side encryption of Azure Disk Storage.](https://aka.ms/disksse), [Different disk encryption offerings]( https://aka.ms/diskencryptioncomparison)" -Metadata '{"category":"Security Center", "version":"1.0.0"}' -Mode All
--->
