# ListsAPI

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserListMemberships**](ListsAPI.md#getuserlistmemberships) | **GET** /2/users/{id}/list_memberships | Get a User&#39;s List Memberships
[**listAddMember**](ListsAPI.md#listaddmember) | **POST** /2/lists/{id}/members | Add a List member
[**listIdCreate**](ListsAPI.md#listidcreate) | **POST** /2/lists | Create List
[**listIdDelete**](ListsAPI.md#listiddelete) | **DELETE** /2/lists/{id} | Delete List
[**listIdGet**](ListsAPI.md#listidget) | **GET** /2/lists/{id} | List lookup by List ID.
[**listIdUpdate**](ListsAPI.md#listidupdate) | **PUT** /2/lists/{id} | Update List.
[**listRemoveMember**](ListsAPI.md#listremovemember) | **DELETE** /2/lists/{id}/members/{user_id} | Remove a List member
[**listUserFollow**](ListsAPI.md#listuserfollow) | **POST** /2/users/{id}/followed_lists | Follow a List
[**listUserOwnedLists**](ListsAPI.md#listuserownedlists) | **GET** /2/users/{id}/owned_lists | Get a User&#39;s Owned Lists.
[**listUserPin**](ListsAPI.md#listuserpin) | **POST** /2/users/{id}/pinned_lists | Pin a List
[**listUserPinnedLists**](ListsAPI.md#listuserpinnedlists) | **GET** /2/users/{id}/pinned_lists | Get a User&#39;s Pinned Lists
[**listUserUnfollow**](ListsAPI.md#listuserunfollow) | **DELETE** /2/users/{id}/followed_lists/{list_id} | Unfollow a List
[**listUserUnpin**](ListsAPI.md#listuserunpin) | **DELETE** /2/users/{id}/pinned_lists/{list_id} | Unpin a List
[**userFollowedLists**](ListsAPI.md#userfollowedlists) | **GET** /2/users/{id}/followed_lists | Get User&#39;s Followed Lists


# **getUserListMemberships**
```swift
    open class func getUserListMemberships(id: String, maxResults: Int? = nil, paginationToken: String? = nil, listFields: [ListFields_getUserListMemberships]? = nil, expansions: [Expansions_getUserListMemberships]? = nil, userFields: [UserFields_getUserListMemberships]? = nil, completion: @escaping (_ data: Get2UsersIdListMembershipsResponse?, _ error: Error?) -> Void)
```

Get a User's List Memberships

Get a User's List Memberships.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the User to lookup.
let maxResults = 987 // Int | The maximum number of results. (optional) (default to 100)
let paginationToken = "paginationToken_example" // String | This parameter is used to get a specified 'page' of results. (optional)
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
 **id** | **String** | The ID of the User to lookup. | 
 **maxResults** | **Int** | The maximum number of results. | [optional] [default to 100]
 **paginationToken** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **listFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of List fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**Get2UsersIdListMembershipsResponse**](Get2UsersIdListMembershipsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAddMember**
```swift
    open class func listAddMember(id: String, listAddUserRequest: ListAddUserRequest? = nil, completion: @escaping (_ data: ListMutateResponse?, _ error: Error?) -> Void)
```

Add a List member

Causes a User to become a member of a List.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the List for which to add a member.
let listAddUserRequest = ListAddUserRequest(userId: "userId_example") // ListAddUserRequest |  (optional)

// Add a List member
ListsAPI.listAddMember(id: id, listAddUserRequest: listAddUserRequest) { (response, error) in
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
 **id** | **String** | The ID of the List for which to add a member. | 
 **listAddUserRequest** | [**ListAddUserRequest**](ListAddUserRequest.md) |  | [optional] 

### Return type

[**ListMutateResponse**](ListMutateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

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

let listCreateRequest = ListCreateRequest(description: "description_example", name: "name_example", _private: false) // ListCreateRequest |  (optional)

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

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

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

let id = "id_example" // String | The ID of the List to delete.

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
 **id** | **String** | The ID of the List to delete. | 

### Return type

[**ListDeleteResponse**](ListDeleteResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIdGet**
```swift
    open class func listIdGet(id: String, listFields: [ListFields_listIdGet]? = nil, expansions: [Expansions_listIdGet]? = nil, userFields: [UserFields_listIdGet]? = nil, completion: @escaping (_ data: Get2ListsIdResponse?, _ error: Error?) -> Void)
```

List lookup by List ID.

Returns a List.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the List.
let listFields = ["listFields_example"] // Set<String> | A comma separated list of List fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)

// List lookup by List ID.
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
 **id** | **String** | The ID of the List. | 
 **listFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of List fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**Get2ListsIdResponse**](Get2ListsIdResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIdUpdate**
```swift
    open class func listIdUpdate(id: String, listUpdateRequest: ListUpdateRequest? = nil, completion: @escaping (_ data: ListUpdateResponse?, _ error: Error?) -> Void)
```

Update List.

Update a List that you own.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the List to modify.
let listUpdateRequest = ListUpdateRequest(description: "description_example", name: "name_example", _private: false) // ListUpdateRequest |  (optional)

// Update List.
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
 **id** | **String** | The ID of the List to modify. | 
 **listUpdateRequest** | [**ListUpdateRequest**](ListUpdateRequest.md) |  | [optional] 

### Return type

[**ListUpdateResponse**](ListUpdateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRemoveMember**
```swift
    open class func listRemoveMember(id: String, userId: String, completion: @escaping (_ data: ListMutateResponse?, _ error: Error?) -> Void)
```

Remove a List member

Causes a User to be removed from the members of a List.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the List to remove a member.
let userId = "userId_example" // String | The ID of User that will be removed from the List.

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
 **id** | **String** | The ID of the List to remove a member. | 
 **userId** | **String** | The ID of User that will be removed from the List. | 

### Return type

[**ListMutateResponse**](ListMutateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserFollow**
```swift
    open class func listUserFollow(id: String, listFollowedRequest: ListFollowedRequest? = nil, completion: @escaping (_ data: ListFollowedResponse?, _ error: Error?) -> Void)
```

Follow a List

Causes a User to follow a List.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source User that will follow the List.
let listFollowedRequest = ListFollowedRequest(listId: "listId_example") // ListFollowedRequest |  (optional)

// Follow a List
ListsAPI.listUserFollow(id: id, listFollowedRequest: listFollowedRequest) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source User that will follow the List. | 
 **listFollowedRequest** | [**ListFollowedRequest**](ListFollowedRequest.md) |  | [optional] 

### Return type

[**ListFollowedResponse**](ListFollowedResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserOwnedLists**
```swift
    open class func listUserOwnedLists(id: String, maxResults: Int? = nil, paginationToken: String? = nil, listFields: [ListFields_listUserOwnedLists]? = nil, expansions: [Expansions_listUserOwnedLists]? = nil, userFields: [UserFields_listUserOwnedLists]? = nil, completion: @escaping (_ data: Get2UsersIdOwnedListsResponse?, _ error: Error?) -> Void)
```

Get a User's Owned Lists.

Get a User's Owned Lists.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the User to lookup.
let maxResults = 987 // Int | The maximum number of results. (optional) (default to 100)
let paginationToken = "paginationToken_example" // String | This parameter is used to get a specified 'page' of results. (optional)
let listFields = ["listFields_example"] // Set<String> | A comma separated list of List fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)

// Get a User's Owned Lists.
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
 **id** | **String** | The ID of the User to lookup. | 
 **maxResults** | **Int** | The maximum number of results. | [optional] [default to 100]
 **paginationToken** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **listFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of List fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**Get2UsersIdOwnedListsResponse**](Get2UsersIdOwnedListsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserPin**
```swift
    open class func listUserPin(id: String, listPinnedRequest: ListPinnedRequest, completion: @escaping (_ data: ListPinnedResponse?, _ error: Error?) -> Void)
```

Pin a List

Causes a User to pin a List.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source User that will pin the List.
let listPinnedRequest = ListPinnedRequest(listId: "listId_example") // ListPinnedRequest | 

// Pin a List
ListsAPI.listUserPin(id: id, listPinnedRequest: listPinnedRequest) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source User that will pin the List. | 
 **listPinnedRequest** | [**ListPinnedRequest**](ListPinnedRequest.md) |  | 

### Return type

[**ListPinnedResponse**](ListPinnedResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserPinnedLists**
```swift
    open class func listUserPinnedLists(id: String, listFields: [ListFields_listUserPinnedLists]? = nil, expansions: [Expansions_listUserPinnedLists]? = nil, userFields: [UserFields_listUserPinnedLists]? = nil, completion: @escaping (_ data: Get2UsersIdPinnedListsResponse?, _ error: Error?) -> Void)
```

Get a User's Pinned Lists

Get a User's Pinned Lists.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source User for whom to return results.
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
 **id** | **String** | The ID of the authenticated source User for whom to return results. | 
 **listFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of List fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**Get2UsersIdPinnedListsResponse**](Get2UsersIdPinnedListsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserUnfollow**
```swift
    open class func listUserUnfollow(id: String, listId: String, completion: @escaping (_ data: ListFollowedResponse?, _ error: Error?) -> Void)
```

Unfollow a List

Causes a User to unfollow a List.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source User that will unfollow the List.
let listId = "listId_example" // String | The ID of the List to unfollow.

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
 **id** | **String** | The ID of the authenticated source User that will unfollow the List. | 
 **listId** | **String** | The ID of the List to unfollow. | 

### Return type

[**ListFollowedResponse**](ListFollowedResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserUnpin**
```swift
    open class func listUserUnpin(id: String, listId: String, completion: @escaping (_ data: ListUnpinResponse?, _ error: Error?) -> Void)
```

Unpin a List

Causes a User to remove a pinned List.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source User for whom to return results.
let listId = "listId_example" // String | The ID of the List to unpin.

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
 **id** | **String** | The ID of the authenticated source User for whom to return results. | 
 **listId** | **String** | The ID of the List to unpin. | 

### Return type

[**ListUnpinResponse**](ListUnpinResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userFollowedLists**
```swift
    open class func userFollowedLists(id: String, maxResults: Int? = nil, paginationToken: String? = nil, listFields: [ListFields_userFollowedLists]? = nil, expansions: [Expansions_userFollowedLists]? = nil, userFields: [UserFields_userFollowedLists]? = nil, completion: @escaping (_ data: Get2UsersIdFollowedListsResponse?, _ error: Error?) -> Void)
```

Get User's Followed Lists

Returns a User's followed Lists.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the User to lookup.
let maxResults = 987 // Int | The maximum number of results. (optional) (default to 100)
let paginationToken = "paginationToken_example" // String | This parameter is used to get a specified 'page' of results. (optional)
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
 **id** | **String** | The ID of the User to lookup. | 
 **maxResults** | **Int** | The maximum number of results. | [optional] [default to 100]
 **paginationToken** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **listFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of List fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**Get2UsersIdFollowedListsResponse**](Get2UsersIdFollowedListsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

