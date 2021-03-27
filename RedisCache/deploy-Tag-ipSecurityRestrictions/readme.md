# Deploy a tag for for all Redis Cache that allow internet access

This policy adds a tag for all Redis Cache that allow inbound internet connectivity and doesn't comply with company's IP Security Restrictions.

## Try on Portal

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3a%2f%2fraw.githubusercontent.com%2fDaFitRobsta%2fAzPolicy%2fmain%2fRedisCache%2fdeploy-Tag-ipSecurityRestrictions%2fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "deploy-tag-redis-cache-internet-traffic-allowed" -DisplayName "Add a Tag on Redis Cache that allow Internet access" -description "This policy adds a tag to all Redis Cache that allow Internet access" -Policy 'https://raw.githubusercontent.com/DaFitRobsta/AzPolicy/main/RedisCache/deploy-Tag-ipSecurityRestrictions/azurepolicy.json' -Mode All -Metadata '{"category":"Cache", "version":"1.0.0"}'
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition
$assignment
````

## Try with CLI

````cli

az policy definition create --name 

````

<!---
New-AzPolicyDefinition -Policy .\azurepolicy.rules.json -ManagementGroupName "75d2a19a-9a75-477c-ad38-39aec4180d00" -Name "deploy-tag-redis-cache-internet-traffic-allowed" -DisplayName "Add a Tag on Redis Cache that allow Internet access" -Description "Add a Tag on Redis Cache that allow Internet access" -Metadata '{"category":"Cache", "version":"1.0.0"}' -Mode All
--->