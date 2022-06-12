# UsersAPI

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findMyUser**](UsersAPI.md#findmyuser) | **GET** /2/users/me | User lookup me
[**findUserById**](UsersAPI.md#finduserbyid) | **GET** /2/users/{id} | User lookup by ID
[**findUserByUsername**](UsersAPI.md#finduserbyusername) | **GET** /2/users/by/username/{username} | User lookup by username
[**findUsersById**](UsersAPI.md#findusersbyid) | **GET** /2/users | User lookup by IDs
[**findUsersByUsername**](UsersAPI.md#findusersbyusername) | **GET** /2/users/by | User lookup by usernames
[**listGetFollowers**](UsersAPI.md#listgetfollowers) | **GET** /2/lists/{id}/followers | Returns User objects that follow a List by the provided List ID
[**listGetMembers**](UsersAPI.md#listgetmembers) | **GET** /2/lists/{id}/members | Returns User objects that are members of a List by the provided List ID.
[**tweetsIdLikingUsers**](UsersAPI.md#tweetsidlikingusers) | **GET** /2/tweets/{id}/liking_users | Returns User objects that have liked the provided Tweet ID
[**tweetsIdRetweetingUsers**](UsersAPI.md#tweetsidretweetingusers) | **GET** /2/tweets/{id}/retweeted_by | Returns User objects that have retweeted the provided Tweet ID
[**usersIdBlock**](UsersAPI.md#usersidblock) | **POST** /2/users/{id}/blocking | Block User by User ID
[**usersIdBlocking**](UsersAPI.md#usersidblocking) | **GET** /2/users/{id}/blocking | Returns User objects that are blocked by provided User ID
[**usersIdFollow**](UsersAPI.md#usersidfollow) | **POST** /2/users/{id}/following | Follow User
[**usersIdFollowers**](UsersAPI.md#usersidfollowers) | **GET** /2/users/{id}/followers | Returns User objects that follow a List by the provided User ID
[**usersIdFollowing**](UsersAPI.md#usersidfollowing) | **GET** /2/users/{id}/following | Following by User ID
[**usersIdMute**](UsersAPI.md#usersidmute) | **POST** /2/users/{id}/muting | Mute User by User ID.
[**usersIdMuting**](UsersAPI.md#usersidmuting) | **GET** /2/users/{id}/muting | Returns User objects that are muted by the provided User ID
[**usersIdUnblock**](UsersAPI.md#usersidunblock) | **DELETE** /2/users/{source_user_id}/blocking/{target_user_id} | Unblock User by User ID
[**usersIdUnfollow**](UsersAPI.md#usersidunfollow) | **DELETE** /2/users/{source_user_id}/following/{target_user_id} | Unfollow User
[**usersIdUnmute**](UsersAPI.md#usersidunmute) | **DELETE** /2/users/{source_user_id}/muting/{target_user_id} | Unmute User by User ID


# **findMyUser**
```swift
    open class func findMyUser(userFields: [UserFields_findMyUser]? = nil, expansions: [Expansions_findMyUser]? = nil, tweetFields: [TweetFields_findMyUser]? = nil, completion: @escaping (_ data: Get2UsersMeResponse?, _ error: Error?) -> Void)
```

User lookup me

This endpoint returns information about the requesting User.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)

// User lookup me
UsersAPI.findMyUser(userFields: userFields, expansions: expansions, tweetFields: tweetFields) { (response, error) in
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
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersMeResponse**](Get2UsersMeResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findUserById**
```swift
    open class func findUserById(id: String, userFields: [UserFields_findUserById]? = nil, expansions: [Expansions_findUserById]? = nil, tweetFields: [TweetFields_findUserById]? = nil, completion: @escaping (_ data: Get2UsersIdResponse?, _ error: Error?) -> Void)
```

User lookup by ID

This endpoint returns information about a User. Specify User by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the User to lookup.
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)

// User lookup by ID
UsersAPI.findUserById(id: id, userFields: userFields, expansions: expansions, tweetFields: tweetFields) { (response, error) in
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
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersIdResponse**](Get2UsersIdResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findUserByUsername**
```swift
    open class func findUserByUsername(username: String, userFields: [UserFields_findUserByUsername]? = nil, expansions: [Expansions_findUserByUsername]? = nil, tweetFields: [TweetFields_findUserByUsername]? = nil, completion: @escaping (_ data: Get2UsersByUsernameUsernameResponse?, _ error: Error?) -> Void)
```

User lookup by username

This endpoint returns information about a User. Specify User by username.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | A username.
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)

// User lookup by username
UsersAPI.findUserByUsername(username: username, userFields: userFields, expansions: expansions, tweetFields: tweetFields) { (response, error) in
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
 **username** | **String** | A username. | 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersByUsernameUsernameResponse**](Get2UsersByUsernameUsernameResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findUsersById**
```swift
    open class func findUsersById(ids: [String], userFields: [UserFields_findUsersById]? = nil, expansions: [Expansions_findUsersById]? = nil, tweetFields: [TweetFields_findUsersById]? = nil, completion: @escaping (_ data: Get2UsersResponse?, _ error: Error?) -> Void)
```

User lookup by IDs

This endpoint returns information about Users. Specify Users by their ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ids = ["inner_example"] // [String] | A list of User IDs, comma-separated. You can specify up to 100 IDs.
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)

// User lookup by IDs
UsersAPI.findUsersById(ids: ids, userFields: userFields, expansions: expansions, tweetFields: tweetFields) { (response, error) in
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
 **ids** | [**[String]**](String.md) | A list of User IDs, comma-separated. You can specify up to 100 IDs. | 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersResponse**](Get2UsersResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findUsersByUsername**
```swift
    open class func findUsersByUsername(usernames: [String], userFields: [UserFields_findUsersByUsername]? = nil, expansions: [Expansions_findUsersByUsername]? = nil, tweetFields: [TweetFields_findUsersByUsername]? = nil, completion: @escaping (_ data: Get2UsersByResponse?, _ error: Error?) -> Void)
```

User lookup by usernames

This endpoint returns information about Users. Specify Users by their username.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let usernames = ["inner_example"] // [String] | A list of usernames, comma-separated.
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)

// User lookup by usernames
UsersAPI.findUsersByUsername(usernames: usernames, userFields: userFields, expansions: expansions, tweetFields: tweetFields) { (response, error) in
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
 **usernames** | [**[String]**](String.md) | A list of usernames, comma-separated. | 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersByResponse**](Get2UsersByResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGetFollowers**
```swift
    open class func listGetFollowers(id: String, maxResults: Int? = nil, paginationToken: String? = nil, userFields: [UserFields_listGetFollowers]? = nil, expansions: [Expansions_listGetFollowers]? = nil, tweetFields: [TweetFields_listGetFollowers]? = nil, completion: @escaping (_ data: Get2ListsIdFollowersResponse?, _ error: Error?) -> Void)
```

Returns User objects that follow a List by the provided List ID

Returns a list of Users that follow a List by the provided List ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the List.
let maxResults = 987 // Int | The maximum number of results. (optional) (default to 100)
let paginationToken = "paginationToken_example" // String | This parameter is used to get a specified 'page' of results. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)

// Returns User objects that follow a List by the provided List ID
UsersAPI.listGetFollowers(id: id, maxResults: maxResults, paginationToken: paginationToken, userFields: userFields, expansions: expansions, tweetFields: tweetFields) { (response, error) in
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
 **maxResults** | **Int** | The maximum number of results. | [optional] [default to 100]
 **paginationToken** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2ListsIdFollowersResponse**](Get2ListsIdFollowersResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGetMembers**
```swift
    open class func listGetMembers(id: String, maxResults: Int? = nil, paginationToken: String? = nil, userFields: [UserFields_listGetMembers]? = nil, expansions: [Expansions_listGetMembers]? = nil, tweetFields: [TweetFields_listGetMembers]? = nil, completion: @escaping (_ data: Get2ListsIdMembersResponse?, _ error: Error?) -> Void)
```

Returns User objects that are members of a List by the provided List ID.

Returns a list of Users that are members of a List by the provided List ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the List.
let maxResults = 987 // Int | The maximum number of results. (optional) (default to 100)
let paginationToken = "paginationToken_example" // String | This parameter is used to get a specified 'page' of results. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)

// Returns User objects that are members of a List by the provided List ID.
UsersAPI.listGetMembers(id: id, maxResults: maxResults, paginationToken: paginationToken, userFields: userFields, expansions: expansions, tweetFields: tweetFields) { (response, error) in
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
 **maxResults** | **Int** | The maximum number of results. | [optional] [default to 100]
 **paginationToken** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2ListsIdMembersResponse**](Get2ListsIdMembersResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tweetsIdLikingUsers**
```swift
    open class func tweetsIdLikingUsers(id: String, maxResults: Int? = nil, paginationToken: String? = nil, userFields: [UserFields_tweetsIdLikingUsers]? = nil, expansions: [Expansions_tweetsIdLikingUsers]? = nil, tweetFields: [TweetFields_tweetsIdLikingUsers]? = nil, completion: @escaping (_ data: Get2TweetsIdLikingUsersResponse?, _ error: Error?) -> Void)
```

Returns User objects that have liked the provided Tweet ID

Returns a list of Users that have liked the provided Tweet ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | A single Tweet ID.
let maxResults = 987 // Int | The maximum number of results. (optional) (default to 100)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)

// Returns User objects that have liked the provided Tweet ID
UsersAPI.tweetsIdLikingUsers(id: id, maxResults: maxResults, paginationToken: paginationToken, userFields: userFields, expansions: expansions, tweetFields: tweetFields) { (response, error) in
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
 **id** | **String** | A single Tweet ID. | 
 **maxResults** | **Int** | The maximum number of results. | [optional] [default to 100]
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2TweetsIdLikingUsersResponse**](Get2TweetsIdLikingUsersResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tweetsIdRetweetingUsers**
```swift
    open class func tweetsIdRetweetingUsers(id: String, maxResults: Int? = nil, paginationToken: String? = nil, userFields: [UserFields_tweetsIdRetweetingUsers]? = nil, expansions: [Expansions_tweetsIdRetweetingUsers]? = nil, tweetFields: [TweetFields_tweetsIdRetweetingUsers]? = nil, completion: @escaping (_ data: Get2TweetsIdRetweetedByResponse?, _ error: Error?) -> Void)
```

Returns User objects that have retweeted the provided Tweet ID

Returns a list of Users that have retweeted the provided Tweet ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | A single Tweet ID.
let maxResults = 987 // Int | The maximum number of results. (optional) (default to 100)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)

// Returns User objects that have retweeted the provided Tweet ID
UsersAPI.tweetsIdRetweetingUsers(id: id, maxResults: maxResults, paginationToken: paginationToken, userFields: userFields, expansions: expansions, tweetFields: tweetFields) { (response, error) in
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
 **id** | **String** | A single Tweet ID. | 
 **maxResults** | **Int** | The maximum number of results. | [optional] [default to 100]
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2TweetsIdRetweetedByResponse**](Get2TweetsIdRetweetedByResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdBlock**
```swift
    open class func usersIdBlock(id: String, blockUserRequest: BlockUserRequest, completion: @escaping (_ data: BlockUserMutationResponse?, _ error: Error?) -> Void)
```

Block User by User ID

Causes the User (in the path) to block the target User. The User (in the path) must match the User context authorizing the request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source User that is requesting to block the target User.
let blockUserRequest = BlockUserRequest(targetUserId: "targetUserId_example") // BlockUserRequest | 

// Block User by User ID
UsersAPI.usersIdBlock(id: id, blockUserRequest: blockUserRequest) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source User that is requesting to block the target User. | 
 **blockUserRequest** | [**BlockUserRequest**](BlockUserRequest.md) |  | 

### Return type

[**BlockUserMutationResponse**](BlockUserMutationResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdBlocking**
```swift
    open class func usersIdBlocking(id: String, maxResults: Int? = nil, paginationToken: String? = nil, userFields: [UserFields_usersIdBlocking]? = nil, expansions: [Expansions_usersIdBlocking]? = nil, tweetFields: [TweetFields_usersIdBlocking]? = nil, completion: @escaping (_ data: Get2UsersIdBlockingResponse?, _ error: Error?) -> Void)
```

Returns User objects that are blocked by provided User ID

Returns a list of Users that are blocked by the provided User ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source User for whom to return results.
let maxResults = 987 // Int | The maximum number of results. (optional)
let paginationToken = "paginationToken_example" // String | This parameter is used to get a specified 'page' of results. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)

// Returns User objects that are blocked by provided User ID
UsersAPI.usersIdBlocking(id: id, maxResults: maxResults, paginationToken: paginationToken, userFields: userFields, expansions: expansions, tweetFields: tweetFields) { (response, error) in
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
 **maxResults** | **Int** | The maximum number of results. | [optional] 
 **paginationToken** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersIdBlockingResponse**](Get2UsersIdBlockingResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdFollow**
```swift
    open class func usersIdFollow(id: String, usersFollowingCreateRequest: UsersFollowingCreateRequest? = nil, completion: @escaping (_ data: UsersFollowingCreateResponse?, _ error: Error?) -> Void)
```

Follow User

Causes the User(in the path) to follow, or “request to follow” for protected Users, the target User. The User(in the path) must match the User context authorizing the request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source User that is requesting to follow the target User.
let usersFollowingCreateRequest = UsersFollowingCreateRequest(targetUserId: "targetUserId_example") // UsersFollowingCreateRequest |  (optional)

// Follow User
UsersAPI.usersIdFollow(id: id, usersFollowingCreateRequest: usersFollowingCreateRequest) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source User that is requesting to follow the target User. | 
 **usersFollowingCreateRequest** | [**UsersFollowingCreateRequest**](UsersFollowingCreateRequest.md) |  | [optional] 

### Return type

[**UsersFollowingCreateResponse**](UsersFollowingCreateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdFollowers**
```swift
    open class func usersIdFollowers(id: String, maxResults: Int? = nil, paginationToken: String? = nil, userFields: [UserFields_usersIdFollowers]? = nil, expansions: [Expansions_usersIdFollowers]? = nil, tweetFields: [TweetFields_usersIdFollowers]? = nil, completion: @escaping (_ data: Get2UsersIdFollowersResponse?, _ error: Error?) -> Void)
```

Returns User objects that follow a List by the provided User ID

Returns a list of Users that follow the provided User ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the User to lookup.
let maxResults = 987 // Int | The maximum number of results. (optional)
let paginationToken = "paginationToken_example" // String | This parameter is used to get a specified 'page' of results. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)

// Returns User objects that follow a List by the provided User ID
UsersAPI.usersIdFollowers(id: id, maxResults: maxResults, paginationToken: paginationToken, userFields: userFields, expansions: expansions, tweetFields: tweetFields) { (response, error) in
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
 **maxResults** | **Int** | The maximum number of results. | [optional] 
 **paginationToken** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersIdFollowersResponse**](Get2UsersIdFollowersResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdFollowing**
```swift
    open class func usersIdFollowing(id: String, maxResults: Int? = nil, paginationToken: String? = nil, userFields: [UserFields_usersIdFollowing]? = nil, expansions: [Expansions_usersIdFollowing]? = nil, tweetFields: [TweetFields_usersIdFollowing]? = nil, completion: @escaping (_ data: Get2UsersIdFollowingResponse?, _ error: Error?) -> Void)
```

Following by User ID

Returns a list of Users that are being followed by the provided User ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the User to lookup.
let maxResults = 987 // Int | The maximum number of results. (optional)
let paginationToken = "paginationToken_example" // String | This parameter is used to get a specified 'page' of results. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)

// Following by User ID
UsersAPI.usersIdFollowing(id: id, maxResults: maxResults, paginationToken: paginationToken, userFields: userFields, expansions: expansions, tweetFields: tweetFields) { (response, error) in
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
 **maxResults** | **Int** | The maximum number of results. | [optional] 
 **paginationToken** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersIdFollowingResponse**](Get2UsersIdFollowingResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdMute**
```swift
    open class func usersIdMute(id: String, muteUserRequest: MuteUserRequest? = nil, completion: @escaping (_ data: MuteUserMutationResponse?, _ error: Error?) -> Void)
```

Mute User by User ID.

Causes the User (in the path) to mute the target User. The User (in the path) must match the User context authorizing the request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source User that is requesting to mute the target User.
let muteUserRequest = MuteUserRequest(targetUserId: "targetUserId_example") // MuteUserRequest |  (optional)

// Mute User by User ID.
UsersAPI.usersIdMute(id: id, muteUserRequest: muteUserRequest) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source User that is requesting to mute the target User. | 
 **muteUserRequest** | [**MuteUserRequest**](MuteUserRequest.md) |  | [optional] 

### Return type

[**MuteUserMutationResponse**](MuteUserMutationResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdMuting**
```swift
    open class func usersIdMuting(id: String, maxResults: Int? = nil, paginationToken: String? = nil, userFields: [UserFields_usersIdMuting]? = nil, expansions: [Expansions_usersIdMuting]? = nil, tweetFields: [TweetFields_usersIdMuting]? = nil, completion: @escaping (_ data: Get2UsersIdMutingResponse?, _ error: Error?) -> Void)
```

Returns User objects that are muted by the provided User ID

Returns a list of Users that are muted by the provided User ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source User for whom to return results.
let maxResults = 987 // Int | The maximum number of results. (optional) (default to 100)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)

// Returns User objects that are muted by the provided User ID
UsersAPI.usersIdMuting(id: id, maxResults: maxResults, paginationToken: paginationToken, userFields: userFields, expansions: expansions, tweetFields: tweetFields) { (response, error) in
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
 **maxResults** | **Int** | The maximum number of results. | [optional] [default to 100]
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2UsersIdMutingResponse**](Get2UsersIdMutingResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdUnblock**
```swift
    open class func usersIdUnblock(sourceUserId: String, targetUserId: String, completion: @escaping (_ data: BlockUserMutationResponse?, _ error: Error?) -> Void)
```

Unblock User by User ID

Causes the source User to unblock the target User. The source User must match the User context authorizing the request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let sourceUserId = "sourceUserId_example" // String | The ID of the authenticated source User that is requesting to unblock the target User.
let targetUserId = "targetUserId_example" // String | The ID of the User that the source User is requesting to unblock.

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
 **sourceUserId** | **String** | The ID of the authenticated source User that is requesting to unblock the target User. | 
 **targetUserId** | **String** | The ID of the User that the source User is requesting to unblock. | 

### Return type

[**BlockUserMutationResponse**](BlockUserMutationResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdUnfollow**
```swift
    open class func usersIdUnfollow(sourceUserId: String, targetUserId: String, completion: @escaping (_ data: UsersFollowingDeleteResponse?, _ error: Error?) -> Void)
```

Unfollow User

Causes the source User to unfollow the target User. The source User must match the User context authorizing the request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let sourceUserId = "sourceUserId_example" // String | The ID of the authenticated source User that is requesting to unfollow the target User.
let targetUserId = "targetUserId_example" // String | The ID of the User that the source User is requesting to unfollow.

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
 **sourceUserId** | **String** | The ID of the authenticated source User that is requesting to unfollow the target User. | 
 **targetUserId** | **String** | The ID of the User that the source User is requesting to unfollow. | 

### Return type

[**UsersFollowingDeleteResponse**](UsersFollowingDeleteResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdUnmute**
```swift
    open class func usersIdUnmute(sourceUserId: String, targetUserId: String, completion: @escaping (_ data: MuteUserMutationResponse?, _ error: Error?) -> Void)
```

Unmute User by User ID

Causes the source User to unmute the target User. The source User must match the User context authorizing the request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let sourceUserId = "sourceUserId_example" // String | The ID of the authenticated source User that is requesting to unmute the target User.
let targetUserId = "targetUserId_example" // String | The ID of the User that the source User is requesting to unmute.

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
 **sourceUserId** | **String** | The ID of the authenticated source User that is requesting to unmute the target User. | 
 **targetUserId** | **String** | The ID of the User that the source User is requesting to unmute. | 

### Return type

[**MuteUserMutationResponse**](MuteUserMutationResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

