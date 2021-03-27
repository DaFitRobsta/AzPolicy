# Deploy a tag for for all Cosmos DB that allow internet access

This policy adds a tag for all Cosmos DB that allow inbound internet connectivity and doesn't comply with company's IP Security Restrictions.

## Try on Portal

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3a%2f%2fraw.githubusercontent.com%2fDaFitRobsta%2fAzPolicy%2fmain%2fCosmosDB%2fdeploy-Tag-ipSecurityRestrictions%2fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "deploy-tag-cosmosdb-internet-traffic-allowed" -DisplayName "Add a Tag on Cosmos DB that allow Internet access" -description "This policy adds a tag to all Cosmos DB that allow Internet access" -Policy 'https://raw.githubusercontent.com/DaFitRobsta/AzPolicy/main/CosmosDB/deploy-Tag-ipSecurityRestrictions/azurepolicy.json' -Mode All -Metadata '{"category":"Cosmos DB", "version":"1.0.0"}'
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition
$assignment
````

## Try with CLI

````cli

az policy definition create --name 

````

<!---
Get-AzPolicyState -PolicyAssignmentName "2f53828b83fc4a71a9944261" -Filter "ComplianceState eq 'NonCompliant'" | fl ResourceId

New-AzPolicyDefinition -Policy .\azurepolicy.rules.json -ManagementGroupName "75d2a19a-9a75-477c-ad38-39aec4180d00" -Name "deploy-tag-cosmosdb-internet-traffic-allowed" -DisplayName "Add a Tag on Cosmos DB that allow Internet access" -Description "Add a Tag on Cosmos DB that allow Internet access" -Metadata '{"category":"Cosmos DB", "version":"1.0.0"}' -Mode All
--->