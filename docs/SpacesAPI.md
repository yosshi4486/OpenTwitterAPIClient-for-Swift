# SpacesAPI

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSpaceById**](SpacesAPI.md#findspacebyid) | **GET** /2/spaces/{id} | Space lookup by Space ID
[**findSpacesByCreatorIds**](SpacesAPI.md#findspacesbycreatorids) | **GET** /2/spaces/by/creator_ids | Space lookup by their creators
[**findSpacesByIds**](SpacesAPI.md#findspacesbyids) | **GET** /2/spaces | Space lookup up Space IDs
[**searchSpaces**](SpacesAPI.md#searchspaces) | **GET** /2/spaces/search | Search for Spaces
[**spaceBuyers**](SpacesAPI.md#spacebuyers) | **GET** /2/spaces/{id}/buyers | Retrieve the list of users who purchased a ticket to the given space


# **findSpaceById**
```swift
    open class func findSpaceById(id: String, spaceFields: Set<String>? = nil, expansions: Set<String>? = nil, completion: @escaping (_ data: SingleSpaceLookupResponse?, _ error: Error?) -> Void)
```

Space lookup by Space ID

Returns a variety of information about the Space specified by the requested ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The space id to be retrieved
let spaceFields = ["spaceFields_example"] // Set<String> | A comma separated list of Space fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)

// Space lookup by Space ID
SpacesAPI.findSpaceById(id: id, spaceFields: spaceFields, expansions: expansions) { (response, error) in
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
 **id** | **String** | The space id to be retrieved | 
 **spaceFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Space fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 

### Return type

[**SingleSpaceLookupResponse**](SingleSpaceLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findSpacesByCreatorIds**
```swift
    open class func findSpacesByCreatorIds(userIds: [String], spaceFields: Set<String>? = nil, expansions: Set<String>? = nil, completion: @escaping (_ data: MultiSpaceLookupResponse?, _ error: Error?) -> Void)
```

Space lookup by their creators

Returns a variety of information about the Spaces created by the provided User IDs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userIds = ["inner_example"] // [String] | The users to search through
let spaceFields = ["spaceFields_example"] // Set<String> | A comma separated list of Space fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)

// Space lookup by their creators
SpacesAPI.findSpacesByCreatorIds(userIds: userIds, spaceFields: spaceFields, expansions: expansions) { (response, error) in
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
 **userIds** | [**[String]**](String.md) | The users to search through | 
 **spaceFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Space fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 

### Return type

[**MultiSpaceLookupResponse**](MultiSpaceLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findSpacesByIds**
```swift
    open class func findSpacesByIds(ids: [String], spaceFields: Set<String>? = nil, expansions: Set<String>? = nil, completion: @escaping (_ data: MultiSpaceLookupResponse?, _ error: Error?) -> Void)
```

Space lookup up Space IDs

Returns a variety of information about the Spaces specified by the requested IDs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ids = ["inner_example"] // [String] | A list of space ids
let spaceFields = ["spaceFields_example"] // Set<String> | A comma separated list of Space fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)

// Space lookup up Space IDs
SpacesAPI.findSpacesByIds(ids: ids, spaceFields: spaceFields, expansions: expansions) { (response, error) in
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
 **ids** | [**[String]**](String.md) | A list of space ids | 
 **spaceFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Space fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 

### Return type

[**MultiSpaceLookupResponse**](MultiSpaceLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchSpaces**
```swift
    open class func searchSpaces(query: String, state: State_searchSpaces? = nil, maxResults: Int? = nil, spaceFields: Set<String>? = nil, expansions: Set<String>? = nil, completion: @escaping (_ data: MultiSpaceLookupResponse?, _ error: Error?) -> Void)
```

Search for Spaces

Returns Spaces that match the provided query.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = "query_example" // String | The search query
let state = "state_example" // String | The state of spaces to search for (optional) (default to .all)
let maxResults = 987 // Int | The number of results to return. The maximum for this value is 100. (optional)
let spaceFields = ["spaceFields_example"] // Set<String> | A comma separated list of Space fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)

// Search for Spaces
SpacesAPI.searchSpaces(query: query, state: state, maxResults: maxResults, spaceFields: spaceFields, expansions: expansions) { (response, error) in
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
 **query** | **String** | The search query | 
 **state** | **String** | The state of spaces to search for | [optional] [default to .all]
 **maxResults** | **Int** | The number of results to return. The maximum for this value is 100. | [optional] 
 **spaceFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Space fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 

### Return type

[**MultiSpaceLookupResponse**](MultiSpaceLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spaceBuyers**
```swift
    open class func spaceBuyers(id: String, userFields: Set<String>? = nil, completion: @escaping (_ data: MultiUserLookupResponse?, _ error: Error?) -> Void)
```

Retrieve the list of users who purchased a ticket to the given space

Retrieves the list of users who purchased a ticket to the given space

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The space id from which tweets will be retrieved
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)

// Retrieve the list of users who purchased a ticket to the given space
SpacesAPI.spaceBuyers(id: id, userFields: userFields) { (response, error) in
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
 **id** | **String** | The space id from which tweets will be retrieved | 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**MultiUserLookupResponse**](MultiUserLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

