# Encrypt all VM disks

This policy encrypts all virtual machine disks based on their Azure Security assessment code.

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

<!---
New-AzPolicyDefinition -Policy .\azurepolicy.rules.json -ManagementGroupName "75d2a19a-9a75-477c-ad38-39aec4180d00" -Name "deploy-tag-storage-account-internet-traffic-allowed" -DisplayName "Add a Tag on Storage Account that allow Internet access" -Description "Add a Tag on Storage Account that allow Internet access" -Metadata '{"category":"Storage", "version":"1.0.0"}' -Mode All
--->