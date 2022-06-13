# BookmarksAPI

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUsersIdBookmarks**](BookmarksAPI.md#getusersidbookmarks) | **GET** /2/users/{id}/bookmarks | Bookmarks by User
[**postUsersIdBookmarks**](BookmarksAPI.md#postusersidbookmarks) | **POST** /2/users/{id}/bookmarks | Add Tweet to Bookmarks
[**usersIdBookmarksDelete**](BookmarksAPI.md#usersidbookmarksdelete) | **DELETE** /2/users/{id}/bookmarks/{tweet_id} | Remove a bookmarked Tweet


# **getUsersIdBookmarks**
```swift
    open class func getUsersIdBookmarks(id: String, maxResults: Int? = nil, paginationToken: String? = nil, tweetFields: [TweetFields_getUsersIdBookmarks]? = nil, expansions: [Expansions_getUsersIdBookmarks]? = nil, mediaFields: [MediaFields_getUsersIdBookmarks]? = nil, pollFields: [PollFields_getUsersIdBookmarks]? = nil, userFields: [UserFields_getUsersIdBookmarks]? = nil, placeFields: [PlaceFields_getUsersIdBookmarks]? = nil, completion: @escaping (_ data: Get2UsersIdBookmarksResponse?, _ error: Error?) -> Void)
```

Bookmarks by User

Returns Tweet objects that have been bookmarked by the requesting User

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenTwitterAPIClient

let id = "id_example" // String | The ID of the authenticated source User for whom to return results.
let maxResults = 987 // Int | The maximum number of results. (optional)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)

// Bookmarks by User
BookmarksAPI.getUsersIdBookmarks(id: id, maxResults: maxResults, paginationToken: paginationToken, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields) { (response, error) in
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
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2UsersIdBookmarksResponse**](Get2UsersIdBookmarksResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUsersIdBookmarks**
```swift
    open class func postUsersIdBookmarks(id: String, bookmarkAddRequest: BookmarkAddRequest, completion: @escaping (_ data: BookmarkMutationResponse?, _ error: Error?) -> Void)
```

Add Tweet to Bookmarks

Adds a Tweet (ID in the body) to the requesting User's (in the path) bookmarks

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenTwitterAPIClient

let id = "id_example" // String | The ID of the authenticated source User for whom to add bookmarks.
let bookmarkAddRequest = BookmarkAddRequest(tweetId: "tweetId_example") // BookmarkAddRequest | 

// Add Tweet to Bookmarks
BookmarksAPI.postUsersIdBookmarks(id: id, bookmarkAddRequest: bookmarkAddRequest) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source User for whom to add bookmarks. | 
 **bookmarkAddRequest** | [**BookmarkAddRequest**](BookmarkAddRequest.md) |  | 

### Return type

[**BookmarkMutationResponse**](BookmarkMutationResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdBookmarksDelete**
```swift
    open class func usersIdBookmarksDelete(id: String, tweetId: String, completion: @escaping (_ data: BookmarkMutationResponse?, _ error: Error?) -> Void)
```

Remove a bookmarked Tweet

Removes a Tweet from the requesting User's bookmarked Tweets.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenTwitterAPIClient

let id = "id_example" // String | The ID of the authenticated source User whose bookmark is to be removed.
let tweetId = "tweetId_example" // String | The ID of the Tweet that the source User is removing from bookmarks.

// Remove a bookmarked Tweet
BookmarksAPI.usersIdBookmarksDelete(id: id, tweetId: tweetId) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source User whose bookmark is to be removed. | 
 **tweetId** | **String** | The ID of the Tweet that the source User is removing from bookmarks. | 

### Return type

[**BookmarkMutationResponse**](BookmarkMutationResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

