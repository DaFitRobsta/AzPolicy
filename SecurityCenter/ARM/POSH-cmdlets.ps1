# Creates a Policy definition at the root management group.
New-AzPolicyDefinition -Policy .\ASC-Set-ARM-Pricing-To-Standard.rules.json -ManagementGroupName "75d2a19a-9a75-477c-ad38-39aec4180d00" -Name "Set ASC ARM Pricing Tier" -DisplayName "Set ASC ARM Pricing Tier" -Description "Sets the Azure Security Center ARM Pricing Tier" -Metadata '{"cateogry":"Security Center", "version":"1.0.0"}' -Mode All


/providers/Microsoft.Authorization/policyDefinitions/8e7da0a5-0a0e-4bbc-bfc0-7773c018b616