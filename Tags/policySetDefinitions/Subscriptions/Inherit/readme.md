# Deploy tag(s) assigned at the subscription level to all resources within it

This Initiative definition contains 9 declarations of the policy definition **Inherit a tag from the subscription**, inheriting 9 tags to all resources under the subscription.

## Try on Portal

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3a%2f%2fraw.githubusercontent.com%2fDaFitRobsta%2fAzPolicy%2fmain%2fTags%2fpolicySetDefinitions%2fSubscriptions%2fInherit%2fdeploySubscriptionTagsToResources.arm.json)
[![Deploy To Azure Gov](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazuregov.svg?sanitize=true)](https://portal.azure.us/#create/Microsoft.Template/uri/https%3a%2f%2fraw.githubusercontent.com%2fDaFitRobsta%2fAzPolicy%2fmain%2fTags%2fpolicySetDefinitions%2fSubscriptions%2fInherit%2fdeploySubscriptionTagsToResources.arm.json)
[![Visualize](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.svg?sanitize=true)](http://armviz.io/#/?load=https%3a%2f%2fraw.githubusercontent.com%2fDaFitRobsta%2fAzPolicy%2fmain%2fTags%2fpolicySetDefinitions%2fSubscriptions%2fInherit%2fdeploySubscriptionTagsToResources.arm.json)

## Try in PowerShell

````powershell
New-AzManagementGroupDeployment -Name "Deploy-Subscription-Tags-to-Resources" -ManagementGroupId "myMG" -Location "West US 2" -TemplateUri 'https://raw.githubusercontent.com/DaFitRobsta/AzPolicy/main/Tags/policySetDefinitions/Subscriptions/Inherit/deploySubscriptionTagsToResources.arm.json'
````

<!--
## Try with CLI

````cli

az policy set-definition create --name 

````
>
<!---
Get-AzPolicyState -PolicyAssignmentName "2f53828b83fc4a71a9944261" -Filter "ComplianceState eq 'NonCompliant'" | fl ResourceId

New-AzPolicyDefinition -Policy .\azurepolicy.rules.json -ManagementGroupName "75d2a19a-9a75-477c-ad38-39aec4180d00" -Name "deploy-tag-cosmosdb-internet-traffic-allowed" -DisplayName "Add a Tag on Cosmos DB that allow Internet access" -Description "Add a Tag on Cosmos DB that allow Internet access" -Metadata '{"category":"Cosmos DB", "version":"1.0.0"}' -Mode All
--->