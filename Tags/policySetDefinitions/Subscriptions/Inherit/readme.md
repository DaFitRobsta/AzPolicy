# Deploy tag(s) assigned at the subscription level to all resources within it

This Initiative definition contains 9 declarations of the policy definition **Inherit a tag from the subscription**, inheriting 9 tags to all resources under the subscription.

## Try with PowerShell

````powershell
$definition = New-AzPolicySetDefinition -Name "Deploy-Subscription-Tags-to-Resources" -DisplayName "Deploy Subscription Tags to Resources" -description "This initiative definition adds up to 9 tags identified at the subscription level to be inherited to all resources within the subscription." -Policy 'https://raw.githubusercontent.com/DaFitRobsta/AzPolicy/main/Tags/policySetDefinitions/Subscriptions/Inherit/deploySubscriptionTagsToResources.json' -Mode Indexed -Metadata '{"category":"Tags", "version":"1.0.0"}' -ManagementGroupName "SL-WT"
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition
$assignment
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