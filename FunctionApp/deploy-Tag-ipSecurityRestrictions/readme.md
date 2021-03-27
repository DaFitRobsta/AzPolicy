# Deploy a tag for for all Function Apps that allow internet access

This policy adds a tag for all Function Apps that allow inbound internet connectivity and doesn't comply with company's IP Security Restrictions.

## Try on Portal

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3a%2f%2fraw.githubusercontent.com%2fDaFitRobsta%2fAzPolicy%2fmain%2fFunctionApp%2fdeploy-Tag-ipSecurityRestrictions%2fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "deploy-tag-function-app-internet-traffic-allowed" -DisplayName "Add a Tag on Function Apps that allow Internet access" -description "This policy adds a tag to all Web Apps that allow Internet access" -Policy 'https://raw.githubusercontent.com/DaFitRobsta/AzPolicy/main/FunctionApp/deploy-Tag-ipSecurityRestrictions/azurepolicy.json' -Mode All -Metadata '{"category":"App Service", "version":"1.0.0"}'
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition
$assignment
````

## Try with CLI

````cli

az policy definition create --name 

````