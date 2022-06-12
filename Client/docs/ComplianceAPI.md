# ComplianceAPI

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBatchComplianceJob**](ComplianceAPI.md#createbatchcompliancejob) | **POST** /2/compliance/jobs | Create compliance job
[**getBatchComplianceJob**](ComplianceAPI.md#getbatchcompliancejob) | **GET** /2/compliance/jobs/{id} | Get Compliance Job
[**listBatchComplianceJobs**](ComplianceAPI.md#listbatchcompliancejobs) | **GET** /2/compliance/jobs | List Compliance Jobs


# **createBatchComplianceJob**
```swift
    open class func createBatchComplianceJob(createComplianceJobRequest: CreateComplianceJobRequest, completion: @escaping (_ data: CreateComplianceJobResponse?, _ error: Error?) -> Void)
```

Create compliance job

Creates a compliance for the given job type

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let createComplianceJobRequest = CreateComplianceJobRequest(name: "name_example", resumable: false, type: "type_example") // CreateComplianceJobRequest | 

// Create compliance job
ComplianceAPI.createBatchComplianceJob(createComplianceJobRequest: createComplianceJobRequest) { (response, error) in
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
 **createComplianceJobRequest** | [**CreateComplianceJobRequest**](CreateComplianceJobRequest.md) |  | 

### Return type

[**CreateComplianceJobResponse**](CreateComplianceJobResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBatchComplianceJob**
```swift
    open class func getBatchComplianceJob(id: String, complianceJobFields: [ComplianceJobFields_getBatchComplianceJob]? = nil, completion: @escaping (_ data: Get2ComplianceJobsIdResponse?, _ error: Error?) -> Void)
```

Get Compliance Job

Returns a single Compliance Job by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the Compliance Job to retrieve.
let complianceJobFields = ["complianceJobFields_example"] // Set<String> | A comma separated list of ComplianceJob fields to display. (optional)

// Get Compliance Job
ComplianceAPI.getBatchComplianceJob(id: id, complianceJobFields: complianceJobFields) { (response, error) in
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
 **id** | **String** | The ID of the Compliance Job to retrieve. | 
 **complianceJobFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of ComplianceJob fields to display. | [optional] 

### Return type

[**Get2ComplianceJobsIdResponse**](Get2ComplianceJobsIdResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBatchComplianceJobs**
```swift
    open class func listBatchComplianceJobs(type: ModelType_listBatchComplianceJobs, status: Status_listBatchComplianceJobs? = nil, complianceJobFields: [ComplianceJobFields_listBatchComplianceJobs]? = nil, completion: @escaping (_ data: Get2ComplianceJobsResponse?, _ error: Error?) -> Void)
```

List Compliance Jobs

Returns recent Compliance Jobs for a given job type and optional job status

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let type = "type_example" // String | Type of Compliance Job to list.
let status = "status_example" // String | Status of Compliance Job to list. (optional)
let complianceJobFields = ["complianceJobFields_example"] // Set<String> | A comma separated list of ComplianceJob fields to display. (optional)

// List Compliance Jobs
ComplianceAPI.listBatchComplianceJobs(type: type, status: status, complianceJobFields: complianceJobFields) { (response, error) in
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
 **type** | **String** | Type of Compliance Job to list. | 
 **status** | **String** | Status of Compliance Job to list. | [optional] 
 **complianceJobFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of ComplianceJob fields to display. | [optional] 

### Return type

[**Get2ComplianceJobsResponse**](Get2ComplianceJobsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

