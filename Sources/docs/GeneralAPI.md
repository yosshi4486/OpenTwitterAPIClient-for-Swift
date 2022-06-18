# GeneralAPI

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOpenApiSpec**](GeneralAPI.md#getopenapispec) | **GET** /2/openapi.json | Returns the OpenAPI Specification document.


# **getOpenApiSpec**
```swift
    open class func getOpenApiSpec(completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Returns the OpenAPI Specification document.

Full OpenAPI Specification in JSON format. (See https://github.com/OAI/OpenAPI-Specification/blob/master/README.md)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenTwitterAPIClient


// Returns the OpenAPI Specification document.
GeneralAPI.getOpenApiSpec() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**AnyCodable**](AnyCodable.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

