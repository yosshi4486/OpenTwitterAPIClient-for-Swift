# ComplianceAPI

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBatchComplianceJob**](ComplianceAPI.md#createbatchcompliancejob) | **POST** /2/compliance/jobs | Create compliance job
[**getBatchComplianceJob**](ComplianceAPI.md#getbatchcompliancejob) | **GET** /2/compliance/jobs/{id} | Get compliance job
[**listBatchComplianceJobs**](ComplianceAPI.md#listbatchcompliancejobs) | **GET** /2/compliance/jobs | List compliance jobs


# **createBatchComplianceJob**
```swift
    open class func createBatchComplianceJob(inlineObject5: InlineObject5, completion: @escaping (_ data: SingleComplianceJobResponse?, _ error: Error?) -> Void)
```

Create compliance job

Creates a compliance for the given job type

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inlineObject5 = inline_object_5(type: ComplianceJobType(), resumable: false, name: "name_example") // InlineObject5 | 

// Create compliance job
ComplianceAPI.createBatchComplianceJob(inlineObject5: inlineObject5) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject5** | [**InlineObject5**](InlineObject5.md) |  | 

### Return type

[**SingleComplianceJobResponse**](SingleComplianceJobResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatchComplianceJob**
```swift
    open class func getBatchComplianceJob(id: String, completion: @escaping (_ data: SingleComplianceJobResponse?, _ error: Error?) -> Void)
```

Get compliance job

Returns a single compliance job by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID of the compliance job to retrieve.

// Get compliance job
ComplianceAPI.getBatchComplianceJob(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID of the compliance job to retrieve. | 

### Return type

[**SingleComplianceJobResponse**](SingleComplianceJobResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBatchComplianceJobs**
```swift
    open class func listBatchComplianceJobs(type: ComplianceJobType, status: ComplianceJobStatus? = nil, completion: @escaping (_ data: MultiComplianceJobResponse?, _ error: Error?) -> Void)
```

List compliance jobs

Returns recent compliance jobs for a given job type and optional job status

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = ComplianceJobType() // ComplianceJobType | Type of compliance job to list.
let status = ComplianceJobStatus() // ComplianceJobStatus | Status of compliance job to list. (optional)

// List compliance jobs
ComplianceAPI.listBatchComplianceJobs(type: type, status: status) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**ComplianceJobType**](.md) | Type of compliance job to list. | 
 **status** | [**ComplianceJobStatus**](.md) | Status of compliance job to list. | [optional] 

### Return type

[**MultiComplianceJobResponse**](MultiComplianceJobResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

