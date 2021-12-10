# ComplianceJob

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Compliance Job ID | 
**type** | [**ComplianceJobType**](ComplianceJobType.md) |  | 
**createdAt** | **Date** | Creation time of the compliance job. | 
**uploadUrl** | **String** | URL to which the user will upload their tweet or user IDs | 
**uploadExpiresAt** | **Date** | Expiration time of the upload URL | 
**downloadUrl** | **String** | URL from which the user will retrieve their compliance results | 
**downloadExpiresAt** | **Date** | Expiration time of the download URL | 
**name** | **String** | User-provided name for a compliance job | [optional] 
**status** | [**ComplianceJobStatus**](ComplianceJobStatus.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


