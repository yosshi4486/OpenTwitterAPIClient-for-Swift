# UsersAPI

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findUserById**](UsersAPI.md#finduserbyid) | **GET** /2/users/{id} | User lookup by ID
[**findUserByUsername**](UsersAPI.md#finduserbyusername) | **GET** /2/users/by/username/{username} | User lookup by username
[**findUsersById**](UsersAPI.md#findusersbyid) | **GET** /2/users | User lookup by IDs
[**findUsersByUsername**](UsersAPI.md#findusersbyusername) | **GET** /2/users/by | User lookup by usernames
[**listGetFollowers**](UsersAPI.md#listgetfollowers) | **GET** /2/lists/{id}/followers | Returns user objects that follow a List by the provided List ID
[**listGetMembers**](UsersAPI.md#listgetmembers) | **GET** /2/lists/{id}/members | Returns user objects that are members of a List by the provided List ID
[**tweetsIdLikingUsers**](UsersAPI.md#tweetsidlikingusers) | **GET** /2/tweets/{id}/liking_users | Returns user objects that have liked the provided Tweet ID
[**tweetsIdRetweetingUsers**](UsersAPI.md#tweetsidretweetingusers) | **GET** /2/tweets/{id}/retweeted_by | Returns user objects that have retweeted the provided Tweet ID
[**usersIdBlock**](UsersAPI.md#usersidblock) | **POST** /2/users/{id}/blocking | Block User by User ID
[**usersIdBlocking**](UsersAPI.md#usersidblocking) | **GET** /2/users/{id}/blocking | Returns user objects that are blocked by provided user ID
[**usersIdFollow**](UsersAPI.md#usersidfollow) | **POST** /2/users/{id}/following | Follow User
[**usersIdFollowers**](UsersAPI.md#usersidfollowers) | **GET** /2/users/{id}/followers | Returns user objects that follow the provided user ID
[**usersIdFollowing**](UsersAPI.md#usersidfollowing) | **GET** /2/users/{id}/following | Following by User ID
[**usersIdMute**](UsersAPI.md#usersidmute) | **POST** /2/users/{id}/muting | Mute User by User ID
[**usersIdMuting**](UsersAPI.md#usersidmuting) | **GET** /2/users/{id}/muting | Returns user objects that are muted by the provided user ID
[**usersIdUnblock**](UsersAPI.md#usersidunblock) | **DELETE** /2/users/{source_user_id}/blocking/{target_user_id} | Unblock User by User ID
[**usersIdUnfollow**](UsersAPI.md#usersidunfollow) | **DELETE** /2/users/{source_user_id}/following/{target_user_id} | Unfollow User
[**usersIdUnmute**](UsersAPI.md#usersidunmute) | **DELETE** /2/users/{source_user_id}/muting/{target_user_id} | Unmute User by User ID


# **findUserById**
```swift
    open class func findUserById(id: String, expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, completion: @escaping (_ data: SingleUserLookupResponse?, _ error: Error?) -> Void)
```

User lookup by ID

This endpoint returns information about a user. Specify user by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Required. A User ID.
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)

// User lookup by ID
UsersAPI.findUserById(id: id, expansions: expansions, tweetFields: tweetFields, userFields: userFields) { (response, error) in
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
 **id** | **String** | Required. A User ID. | 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**SingleUserLookupResponse**](SingleUserLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findUserByUsername**
```swift
    open class func findUserByUsername(username: String, expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, completion: @escaping (_ data: SingleUserLookupResponse?, _ error: Error?) -> Void)
```

User lookup by username

This endpoint returns information about a user. Specify user by username.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | Required. A username.
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)

// User lookup by username
UsersAPI.findUserByUsername(username: username, expansions: expansions, tweetFields: tweetFields, userFields: userFields) { (response, error) in
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
 **username** | **String** | Required. A username. | 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**SingleUserLookupResponse**](SingleUserLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findUsersById**
```swift
    open class func findUsersById(ids: [String], expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, completion: @escaping (_ data: MultiUserLookupResponse?, _ error: Error?) -> Void)
```

User lookup by IDs

This endpoint returns information about users. Specify users by their ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ids = ["inner_example"] // [String] | Required. A list of User IDs, comma-separated. You can specify up to 100 IDs.
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)

// User lookup by IDs
UsersAPI.findUsersById(ids: ids, expansions: expansions, tweetFields: tweetFields, userFields: userFields) { (response, error) in
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
 **ids** | [**[String]**](String.md) | Required. A list of User IDs, comma-separated. You can specify up to 100 IDs. | 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**MultiUserLookupResponse**](MultiUserLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findUsersByUsername**
```swift
    open class func findUsersByUsername(usernames: [String], expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, completion: @escaping (_ data: MultiUserLookupResponse?, _ error: Error?) -> Void)
```

User lookup by usernames

This endpoint returns information about users. Specify users by their username.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let usernames = ["inner_example"] // [String] | Required . A list of usernames, comma-separated. You can specify up to 100 usernames.
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)

// User lookup by usernames
UsersAPI.findUsersByUsername(usernames: usernames, expansions: expansions, tweetFields: tweetFields, userFields: userFields) { (response, error) in
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
 **usernames** | [**[String]**](String.md) | Required . A list of usernames, comma-separated. You can specify up to 100 usernames. | 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**MultiUserLookupResponse**](MultiUserLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGetFollowers**
```swift
    open class func listGetFollowers(id: String, maxResults: Int? = nil, paginationToken: Int64? = nil, expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, completion: @escaping (_ data: ListLookupMultipleUsersLookupResponse?, _ error: Error?) -> Void)
```

Returns user objects that follow a List by the provided List ID

Returns a list of users that follow a List by the provided List ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the List for which to return followers
let maxResults = 987 // Int | The maximum number of results (optional) (default to 100)
let paginationToken = 987 // Int64 | This parameter is used to get a specified 'page' of results. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)

// Returns user objects that follow a List by the provided List ID
UsersAPI.listGetFollowers(id: id, maxResults: maxResults, paginationToken: paginationToken, expansions: expansions, tweetFields: tweetFields, userFields: userFields) { (response, error) in
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
 **id** | **String** | The ID of the List for which to return followers | 
 **maxResults** | **Int** | The maximum number of results | [optional] [default to 100]
 **paginationToken** | **Int64** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**ListLookupMultipleUsersLookupResponse**](ListLookupMultipleUsersLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGetMembers**
```swift
    open class func listGetMembers(id: String, maxResults: Int? = nil, paginationToken: Int64? = nil, expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, completion: @escaping (_ data: ListLookupMultipleUsersLookupResponse?, _ error: Error?) -> Void)
```

Returns user objects that are members of a List by the provided List ID

Returns a list of users that are members of a List by the provided List ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the List for which to return members
let maxResults = 987 // Int | The maximum number of results (optional) (default to 100)
let paginationToken = 987 // Int64 | This parameter is used to get a specified 'page' of results. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)

// Returns user objects that are members of a List by the provided List ID
UsersAPI.listGetMembers(id: id, maxResults: maxResults, paginationToken: paginationToken, expansions: expansions, tweetFields: tweetFields, userFields: userFields) { (response, error) in
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
 **id** | **String** | The ID of the List for which to return members | 
 **maxResults** | **Int** | The maximum number of results | [optional] [default to 100]
 **paginationToken** | **Int64** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 

### Return type

[**ListLookupMultipleUsersLookupResponse**](ListLookupMultipleUsersLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tweetsIdLikingUsers**
```swift
    open class func tweetsIdLikingUsers(id: String, completion: @escaping (_ data: GenericMultipleUsersLookupResponse?, _ error: Error?) -> Void)
```

Returns user objects that have liked the provided Tweet ID

Returns a list of users that have liked the provided Tweet ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the Tweet for which to return results

// Returns user objects that have liked the provided Tweet ID
UsersAPI.tweetsIdLikingUsers(id: id) { (response, error) in
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
 **id** | **String** | The ID of the Tweet for which to return results | 

### Return type

[**GenericMultipleUsersLookupResponse**](GenericMultipleUsersLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tweetsIdRetweetingUsers**
```swift
    open class func tweetsIdRetweetingUsers(id: String, completion: @escaping (_ data: GenericMultipleUsersLookupResponse?, _ error: Error?) -> Void)
```

Returns user objects that have retweeted the provided Tweet ID

Returns a list of users that have retweeted the provided Tweet ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the Tweet for which to return results

// Returns user objects that have retweeted the provided Tweet ID
UsersAPI.tweetsIdRetweetingUsers(id: id) { (response, error) in
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
 **id** | **String** | The ID of the Tweet for which to return results | 

### Return type

[**GenericMultipleUsersLookupResponse**](GenericMultipleUsersLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdBlock**
```swift
    open class func usersIdBlock(id: String, inlineObject: InlineObject? = nil, completion: @escaping (_ data: UsersBlockingMutationResponse?, _ error: Error?) -> Void)
```

Block User by User ID

Causes the user (in the path) to block the target user. The user (in the path) must match the user context authorizing the request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the user that is requesting to block the target user
let inlineObject = inline_object(targetUserId: "targetUserId_example") // InlineObject |  (optional)

// Block User by User ID
UsersAPI.usersIdBlock(id: id, inlineObject: inlineObject) { (response, error) in
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
 **id** | **String** | The ID of the user that is requesting to block the target user | 
 **inlineObject** | [**InlineObject**](InlineObject.md) |  | [optional] 

### Return type

[**UsersBlockingMutationResponse**](UsersBlockingMutationResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdBlocking**
```swift
    open class func usersIdBlocking(id: String, maxResults: Int? = nil, paginationToken: String? = nil, completion: @escaping (_ data: GenericMultipleUsersLookupResponse?, _ error: Error?) -> Void)
```

Returns user objects that are blocked by provided user ID

Returns a list of users that are blocked by the provided user ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the user for whom to return results
let maxResults = 987 // Int | The maximum number of results (optional)
let paginationToken = "paginationToken_example" // String | This value is populated by passing the 'next_token' or 'previous_token' returned in a request to paginate through results. (optional)

// Returns user objects that are blocked by provided user ID
UsersAPI.usersIdBlocking(id: id, maxResults: maxResults, paginationToken: paginationToken) { (response, error) in
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
 **maxResults** | **Int** | The maximum number of results | [optional] 
 **paginationToken** | **String** | This value is populated by passing the &#39;next_token&#39; or &#39;previous_token&#39; returned in a request to paginate through results. | [optional] 

### Return type

[**GenericMultipleUsersLookupResponse**](GenericMultipleUsersLookupResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdFollow**
```swift
    open class func usersIdFollow(id: String, inlineObject2: InlineObject2? = nil, completion: @escaping (_ data: UsersFollowingCreateResponse?, _ error: Error?) -> Void)
```

Follow User

Causes the user(in the path) to follow, or “request to follow” for protected users, the target user. The user(in the path) must match the user context authorizing the request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the user that is requesting to follow the target user
let inlineObject2 = inline_object_2(targetUserId: "targetUserId_example") // InlineObject2 |  (optional)

// Follow User
UsersAPI.usersIdFollow(id: id, inlineObject2: inlineObject2) { (response, error) in
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
 **id** | **String** | The ID of the user that is requesting to follow the target user | 
 **inlineObject2** | [**InlineObject2**](InlineObject2.md) |  | [optional] 

### Return type

[**UsersFollowingCreateResponse**](UsersFollowingCreateResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdFollowers**
```swift
    open class func usersIdFollowers(id: String, maxResults: Int? = nil, paginationToken: String? = nil, completion: @escaping (_ data: GenericMultipleUsersLookupResponse?, _ error: Error?) -> Void)
```

Returns user objects that follow the provided user ID

Returns a list of users that follow the provided user ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the user for whom to return results
let maxResults = 987 // Int | The maximum number of results (optional)
let paginationToken = "paginationToken_example" // String | This value is populated by passing the 'next_token' or 'previous_token' returned in a request to paginate through results. (optional)

// Returns user objects that follow the provided user ID
UsersAPI.usersIdFollowers(id: id, maxResults: maxResults, paginationToken: paginationToken) { (response, error) in
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
 **maxResults** | **Int** | The maximum number of results | [optional] 
 **paginationToken** | **String** | This value is populated by passing the &#39;next_token&#39; or &#39;previous_token&#39; returned in a request to paginate through results. | [optional] 

### Return type

[**GenericMultipleUsersLookupResponse**](GenericMultipleUsersLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdFollowing**
```swift
    open class func usersIdFollowing(id: String, maxResults: Int? = nil, paginationToken: String? = nil, completion: @escaping (_ data: UsersFollowingLookupResponse?, _ error: Error?) -> Void)
```

Following by User ID

Returns a list of users that are being followed by the provided user ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the user for whom to return results
let maxResults = 987 // Int | The maximum number of results (optional)
let paginationToken = "paginationToken_example" // String | This value is populated by passing the 'next_token' or 'previous_token' returned in a request to paginate through results. (optional)

// Following by User ID
UsersAPI.usersIdFollowing(id: id, maxResults: maxResults, paginationToken: paginationToken) { (response, error) in
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
 **maxResults** | **Int** | The maximum number of results | [optional] 
 **paginationToken** | **String** | This value is populated by passing the &#39;next_token&#39; or &#39;previous_token&#39; returned in a request to paginate through results. | [optional] 

### Return type

[**UsersFollowingLookupResponse**](UsersFollowingLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdMute**
```swift
    open class func usersIdMute(id: String, inlineObject1: InlineObject1? = nil, completion: @escaping (_ data: UsersMutingMutationResponse?, _ error: Error?) -> Void)
```

Mute User by User ID

Causes the user (in the path) to mute the target user. The user (in the path) must match the user context authorizing the request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the user that is requesting to mute the target user
let inlineObject1 = inline_object_1(targetUserId: "targetUserId_example") // InlineObject1 |  (optional)

// Mute User by User ID
UsersAPI.usersIdMute(id: id, inlineObject1: inlineObject1) { (response, error) in
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
 **id** | **String** | The ID of the user that is requesting to mute the target user | 
 **inlineObject1** | [**InlineObject1**](InlineObject1.md) |  | [optional] 

### Return type

[**UsersMutingMutationResponse**](UsersMutingMutationResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdMuting**
```swift
    open class func usersIdMuting(id: String, maxResults: Int? = nil, paginationToken: String? = nil, completion: @escaping (_ data: GenericMultipleUsersLookupResponse?, _ error: Error?) -> Void)
```

Returns user objects that are muted by the provided user ID

Returns a list of users that are muted by the provided user ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the user for whom to return results
let maxResults = 987 // Int | The maximum number of results (optional) (default to 100)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. (optional)

// Returns user objects that are muted by the provided user ID
UsersAPI.usersIdMuting(id: id, maxResults: maxResults, paginationToken: paginationToken) { (response, error) in
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
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] 

### Return type

[**GenericMultipleUsersLookupResponse**](GenericMultipleUsersLookupResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdUnblock**
```swift
    open class func usersIdUnblock(sourceUserId: String, targetUserId: String, completion: @escaping (_ data: UsersBlockingMutationResponse?, _ error: Error?) -> Void)
```

Unblock User by User ID

Causes the source user to unblock the target user. The source user must match the user context authorizing the request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let sourceUserId = "sourceUserId_example" // String | The ID of the user that is requesting to unblock the target user
let targetUserId = "targetUserId_example" // String | The ID of the user that the source user is requesting to unblock

// Unblock User by User ID
UsersAPI.usersIdUnblock(sourceUserId: sourceUserId, targetUserId: targetUserId) { (response, error) in
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
 **sourceUserId** | **String** | The ID of the user that is requesting to unblock the target user | 
 **targetUserId** | **String** | The ID of the user that the source user is requesting to unblock | 

### Return type

[**UsersBlockingMutationResponse**](UsersBlockingMutationResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdUnfollow**
```swift
    open class func usersIdUnfollow(sourceUserId: String, targetUserId: String, completion: @escaping (_ data: UsersFollowingDeleteResponse?, _ error: Error?) -> Void)
```

Unfollow User

Causes the source user to unfollow the target user. The source user must match the user context authorizing the request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let sourceUserId = "sourceUserId_example" // String | The ID of the user that is requesting to unfollow the target user
let targetUserId = "targetUserId_example" // String | The ID of the user that the source user is requesting to unfollow

// Unfollow User
UsersAPI.usersIdUnfollow(sourceUserId: sourceUserId, targetUserId: targetUserId) { (response, error) in
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
 **sourceUserId** | **String** | The ID of the user that is requesting to unfollow the target user | 
 **targetUserId** | **String** | The ID of the user that the source user is requesting to unfollow | 

### Return type

[**UsersFollowingDeleteResponse**](UsersFollowingDeleteResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdUnmute**
```swift
    open class func usersIdUnmute(sourceUserId: String, targetUserId: String, completion: @escaping (_ data: UsersMutingMutationResponse?, _ error: Error?) -> Void)
```

Unmute User by User ID

Causes the source user to unmute the target user. The source user must match the user context authorizing the request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let sourceUserId = "sourceUserId_example" // String | The ID of the user that is requesting to unmute the target user
let targetUserId = "targetUserId_example" // String | The ID of the user that the source user is requesting to unmute

// Unmute User by User ID
UsersAPI.usersIdUnmute(sourceUserId: sourceUserId, targetUserId: targetUserId) { (response, error) in
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
 **sourceUserId** | **String** | The ID of the user that is requesting to unmute the target user | 
 **targetUserId** | **String** | The ID of the user that the source user is requesting to unmute | 

### Return type

[**UsersMutingMutationResponse**](UsersMutingMutationResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

