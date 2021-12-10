# ListsAPI

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserListMemberships**](ListsAPI.md#getuserlistmemberships) | **GET** /2/users/{id}/list_memberships | Get a User&#39;s List Memberships
[**listAddMember**](ListsAPI.md#listaddmember) | **POST** /2/lists/{id}/members | Add a List member
[**listIdCreate**](ListsAPI.md#listidcreate) | **POST** /2/lists | Create List
[**listIdDelete**](ListsAPI.md#listiddelete) | **DELETE** /2/lists/{id} | Delete List
[**listIdGet**](ListsAPI.md#listidget) | **GET** /2/lists/{id} | List lookup by List ID
[**listIdUpdate**](ListsAPI.md#listidupdate) | **PUT** /2/lists/{id} | Update List
[**listRemoveMember**](ListsAPI.md#listremovemember) | **DELETE** /2/lists/{id}/members/{user_id} | Remove a List member
[**listUserFollow**](ListsAPI.md#listuserfollow) | **POST** /2/users/{id}/followed_lists | Follow a List
[**listUserOwnedLists**](ListsAPI.md#listuserownedlists) | **GET** /2/users/{id}/owned_lists | Get a User&#39;s Owned Lists
[**listUserPin**](ListsAPI.md#listuserpin) | **POST** /2/users/{id}/pinned_lists | Pin a List
[**listUserPinnedLists**](ListsAPI.md#listuserpinnedlists) | **GET** /2/users/{id}/pinned_lists | Get a User&#39;s Pinned Lists
[**listUserUnfollow**](ListsAPI.md#listuserunfollow) | **DELETE** /2/users/{id}/followed_lists/{list_id} | Unfollow a List
[**listUserUnpin**](ListsAPI.md#listuserunpin) | **DELETE** /2/users/{id}/pinned_lists/{list_id} | Unpin a List
[**userFollowedLists**](ListsAPI.md#userfollowedlists) | **GET** /2/users/{id}/followed_lists | Get User&#39;s Followed Lists


# **getUserListMemberships**
```swift
    open class func getUserListMemberships(id: String, maxResults: Int? = nil, paginationToken: Int64? = nil, listFields: Set<String>? = nil, expansions: Set<String>? = nil, userFields: Set<String>? = nil, completion: @escaping (_ data: MultiListResponse?, _ error: Error?) -> Void)
```

Get a User's List Memberships

Get a User's List Memberships.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the user for whom to return results
let maxResults = 987 // Int | The maximum number of results (optional) (default to 100)
let paginationToken = 987 // Int64 | This parameter is used to get a specified 'page' of results. (optional)
let listFields = ["listFields_example"] // Set<String> | A comma separated list of List fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)

// Get a User's List Memberships
ListsAPI.getUserListMemberships(id: id, maxResults: maxResults, paginationToken: paginationToken, listFields: listFields, expansions: expansions, userFields: userFields) { (response, error) in
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
 **id** | **String** | The ID of the user for whom to return results | 
 **maxResults** | **Int** | The maximum number of results | [optional] [default to 100]
 **paginationToken** | **Int64** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **listFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of List fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**MultiListResponse**](MultiListResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAddMember**
```swift
    open class func listAddMember(id: String, listAddMemberRequest: ListAddMemberRequest? = nil, completion: @escaping (_ data: ListMemberResponse?, _ error: Error?) -> Void)
```

Add a List member

Causes a user to become a member of a List.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the List to add a member
let listAddMemberRequest = ListAddMemberRequest(userId: "userId_example") // ListAddMemberRequest |  (optional)

// Add a List member
ListsAPI.listAddMember(id: id, listAddMemberRequest: listAddMemberRequest) { (response, error) in
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
 **id** | **String** | The ID of the List to add a member | 
 **listAddMemberRequest** | [**ListAddMemberRequest**](ListAddMemberRequest.md) |  | [optional] 

### Return type

[**ListMemberResponse**](ListMemberResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIdCreate**
```swift
    open class func listIdCreate(listCreateRequest: ListCreateRequest? = nil, completion: @escaping (_ data: ListCreateResponse?, _ error: Error?) -> Void)
```

Create List

Creates a new List.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let listCreateRequest = ListCreateRequest(name: "name_example", description: "description_example", _private: false) // ListCreateRequest |  (optional)

// Create List
ListsAPI.listIdCreate(listCreateRequest: listCreateRequest) { (response, error) in
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
 **listCreateRequest** | [**ListCreateRequest**](ListCreateRequest.md) |  | [optional] 

### Return type

[**ListCreateResponse**](ListCreateResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIdDelete**
```swift
    open class func listIdDelete(id: String, completion: @escaping (_ data: ListDeleteResponse?, _ error: Error?) -> Void)
```

Delete List

Delete a List that you own.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the List to delete

// Delete List
ListsAPI.listIdDelete(id: id) { (response, error) in
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
 **id** | **String** | The ID of the List to delete | 

### Return type

[**ListDeleteResponse**](ListDeleteResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIdGet**
```swift
    open class func listIdGet(id: String, listFields: Set<String>? = nil, expansions: Set<String>? = nil, userFields: Set<String>? = nil, completion: @escaping (_ data: SingleListLookupResponse?, _ error: Error?) -> Void)
```

List lookup by List ID

Returns a List

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the List to get
let listFields = ["listFields_example"] // Set<String> | A comma separated list of List fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)

// List lookup by List ID
ListsAPI.listIdGet(id: id, listFields: listFields, expansions: expansions, userFields: userFields) { (response, error) in
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
 **id** | **String** | The ID of the List to get | 
 **listFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of List fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**SingleListLookupResponse**](SingleListLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIdUpdate**
```swift
    open class func listIdUpdate(id: String, listUpdateRequest: ListUpdateRequest? = nil, completion: @escaping (_ data: ListUpdateResponse?, _ error: Error?) -> Void)
```

Update List

Update a List that you own.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the List to modify
let listUpdateRequest = ListUpdateRequest(name: "name_example", description: "description_example", _private: false) // ListUpdateRequest |  (optional)

// Update List
ListsAPI.listIdUpdate(id: id, listUpdateRequest: listUpdateRequest) { (response, error) in
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
 **id** | **String** | The ID of the List to modify | 
 **listUpdateRequest** | [**ListUpdateRequest**](ListUpdateRequest.md) |  | [optional] 

### Return type

[**ListUpdateResponse**](ListUpdateResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRemoveMember**
```swift
    open class func listRemoveMember(id: String, userId: String, completion: @escaping (_ data: ListMemberResponse?, _ error: Error?) -> Void)
```

Remove a List member

Causes a user to be removed from the members of a List.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the List to remove a member
let userId = "userId_example" // String | The ID of user that will be removed from the List

// Remove a List member
ListsAPI.listRemoveMember(id: id, userId: userId) { (response, error) in
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
 **id** | **String** | The ID of the List to remove a member | 
 **userId** | **String** | The ID of user that will be removed from the List | 

### Return type

[**ListMemberResponse**](ListMemberResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserFollow**
```swift
    open class func listUserFollow(id: String, listFollowRequest: ListFollowRequest? = nil, completion: @escaping (_ data: ListFollowedResponse?, _ error: Error?) -> Void)
```

Follow a List

Causes a user to follow a List.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source user that will follow the List
let listFollowRequest = ListFollowRequest(listId: "listId_example") // ListFollowRequest |  (optional)

// Follow a List
ListsAPI.listUserFollow(id: id, listFollowRequest: listFollowRequest) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source user that will follow the List | 
 **listFollowRequest** | [**ListFollowRequest**](ListFollowRequest.md) |  | [optional] 

### Return type

[**ListFollowedResponse**](ListFollowedResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserOwnedLists**
```swift
    open class func listUserOwnedLists(id: String, maxResults: Int? = nil, paginationToken: Int64? = nil, listFields: Set<String>? = nil, expansions: Set<String>? = nil, userFields: Set<String>? = nil, completion: @escaping (_ data: MultiListResponse?, _ error: Error?) -> Void)
```

Get a User's Owned Lists

Get a User's Owned Lists.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the user for whom to return results
let maxResults = 987 // Int | The maximum number of results (optional) (default to 100)
let paginationToken = 987 // Int64 | This parameter is used to get a specified 'page' of results. (optional)
let listFields = ["listFields_example"] // Set<String> | A comma separated list of List fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)

// Get a User's Owned Lists
ListsAPI.listUserOwnedLists(id: id, maxResults: maxResults, paginationToken: paginationToken, listFields: listFields, expansions: expansions, userFields: userFields) { (response, error) in
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
 **id** | **String** | The ID of the user for whom to return results | 
 **maxResults** | **Int** | The maximum number of results | [optional] [default to 100]
 **paginationToken** | **Int64** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **listFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of List fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**MultiListResponse**](MultiListResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserPin**
```swift
    open class func listUserPin(id: String, listPinRequest: ListPinRequest? = nil, completion: @escaping (_ data: ListPinnedResponse?, _ error: Error?) -> Void)
```

Pin a List

Causes a user to pin a List.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source user that will pin the List
let listPinRequest = ListPinRequest(listId: "listId_example") // ListPinRequest |  (optional)

// Pin a List
ListsAPI.listUserPin(id: id, listPinRequest: listPinRequest) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source user that will pin the List | 
 **listPinRequest** | [**ListPinRequest**](ListPinRequest.md) |  | [optional] 

### Return type

[**ListPinnedResponse**](ListPinnedResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserPinnedLists**
```swift
    open class func listUserPinnedLists(id: String, listFields: Set<String>? = nil, expansions: Set<String>? = nil, userFields: Set<String>? = nil, completion: @escaping (_ data: MultiListNoPaginationResponse?, _ error: Error?) -> Void)
```

Get a User's Pinned Lists

Get a User's Pinned Lists.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the user for whom to return results
let listFields = ["listFields_example"] // Set<String> | A comma separated list of List fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)

// Get a User's Pinned Lists
ListsAPI.listUserPinnedLists(id: id, listFields: listFields, expansions: expansions, userFields: userFields) { (response, error) in
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
 **id** | **String** | The ID of the user for whom to return results | 
 **listFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of List fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**MultiListNoPaginationResponse**](MultiListNoPaginationResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserUnfollow**
```swift
    open class func listUserUnfollow(id: String, listId: String, completion: @escaping (_ data: ListFollowedResponse?, _ error: Error?) -> Void)
```

Unfollow a List

Causes a user to unfollow a List.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source user that will unfollow the List
let listId = "listId_example" // String | The ID of the List to unfollow

// Unfollow a List
ListsAPI.listUserUnfollow(id: id, listId: listId) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source user that will unfollow the List | 
 **listId** | **String** | The ID of the List to unfollow | 

### Return type

[**ListFollowedResponse**](ListFollowedResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserUnpin**
```swift
    open class func listUserUnpin(id: String, listId: String, completion: @escaping (_ data: ListPinnedResponse?, _ error: Error?) -> Void)
```

Unpin a List

Causes a user to remove a pinned List.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source user that will remove the pinned List
let listId = "listId_example" // String | The ID of the List to unpin

// Unpin a List
ListsAPI.listUserUnpin(id: id, listId: listId) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source user that will remove the pinned List | 
 **listId** | **String** | The ID of the List to unpin | 

### Return type

[**ListPinnedResponse**](ListPinnedResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userFollowedLists**
```swift
    open class func userFollowedLists(id: String, maxResults: Int? = nil, paginationToken: Int64? = nil, listFields: Set<String>? = nil, expansions: Set<String>? = nil, userFields: Set<String>? = nil, completion: @escaping (_ data: MultiListResponse?, _ error: Error?) -> Void)
```

Get User's Followed Lists

Returns a user's followed Lists.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the user for whom to return results
let maxResults = 987 // Int | The maximum number of results (optional) (default to 100)
let paginationToken = 987 // Int64 | This parameter is used to get a specified 'page' of results. (optional)
let listFields = ["listFields_example"] // Set<String> | A comma separated list of List fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)

// Get User's Followed Lists
ListsAPI.userFollowedLists(id: id, maxResults: maxResults, paginationToken: paginationToken, listFields: listFields, expansions: expansions, userFields: userFields) { (response, error) in
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
 **id** | **String** | The ID of the user for whom to return results | 
 **maxResults** | **Int** | The maximum number of results | [optional] [default to 100]
 **paginationToken** | **Int64** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **listFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of List fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**MultiListResponse**](MultiListResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

