# Audit internet access for all Web Apps

This policy audit's all Web Apps that allow inbound internet connectivity

## Try on Portal

[![Deploy To Azure](https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.svg?sanitize=true)](https://portal.azure.com/#blade/Microsoft_Azure_Policy/CreatePolicyDefinitionBlade/uri/https%3a%2f%2fraw.githubusercontent.com%2fDaFitRobsta%2fAzPolicy%2fmain%2fWebApp%2faudit-ipSecurityRestrictions%2fazurepolicy.json)

## Try with PowerShell

````powershell
$definition = New-AzPolicyDefinition -Name "web-app-https-traffic-only" -DisplayName "Enforce https traffic on all Web Apps" -description "This policy ensures that only https traffic is allowed on all Web Apps" -Policy 'https://raw.githubusercontent.com/Azure/azure-policy/master/samples/WebApp/web-app-https-traffic-only/azurepolicy.rules.json' -Parameter 'https://raw.githubusercontent.com/Azure/azure-policy/master/samples/WebApp/web-app-https-traffic-only/azurepolicy.parameters.json' -Mode Indexed
$definition
$assignment = New-AzPolicyAssignment -Name <assignmentname> -Scope <scope> -PolicyDefinition $definition
$assignment
````

## Try with CLI

````cli

az policy definition create --name 'web-app-https-traffic-only' --display-name 'Enforce https traffic on all Web Apps' --description 'This policy ensures that only https traffic is allowed on all Web Apps' --rules 'https://raw.githubusercontent.com/Azure/azure-policy/master/samples/WebApp/web-app-https-traffic-only/azurepolicy.rules.json' --params 'https://raw.githubusercontent.com/Azure/azure-policy/master/samples/WebApp/web-app-https-traffic-only/azurepolicy.parameters.json' --mode Indexed

az policy assignment create --name <assignmentname> --scope <scope> --policy "web-app-https-traffic-only"

````
