# SpacesAPI

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findSpaceById**](SpacesAPI.md#findspacebyid) | **GET** /2/spaces/{id} | Space lookup by Space ID
[**findSpacesByCreatorIds**](SpacesAPI.md#findspacesbycreatorids) | **GET** /2/spaces/by/creator_ids | Space lookup by their creators
[**findSpacesByIds**](SpacesAPI.md#findspacesbyids) | **GET** /2/spaces | Space lookup up Space IDs
[**searchSpaces**](SpacesAPI.md#searchspaces) | **GET** /2/spaces/search | Search for Spaces
[**spaceBuyers**](SpacesAPI.md#spacebuyers) | **GET** /2/spaces/{id}/buyers | Retrieve the list of Users who purchased a ticket to the given space
[**spaceTweets**](SpacesAPI.md#spacetweets) | **GET** /2/spaces/{id}/tweets | Retrieve Tweets from a Space.


# **findSpaceById**
```swift
    open class func findSpaceById(id: String, spaceFields: [SpaceFields_findSpaceById]? = nil, expansions: [Expansions_findSpaceById]? = nil, userFields: [UserFields_findSpaceById]? = nil, topicFields: [TopicFields_findSpaceById]? = nil, completion: @escaping (_ data: Get2SpacesIdResponse?, _ error: Error?) -> Void)
```

Space lookup by Space ID

Returns a variety of information about the Space specified by the requested ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenTwitterAPIClient

let id = "id_example" // String | The ID of the Space to be retrieved.
let spaceFields = ["spaceFields_example"] // Set<String> | A comma separated list of Space fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let topicFields = ["topicFields_example"] // Set<String> | A comma separated list of Topic fields to display. (optional)

// Space lookup by Space ID
SpacesAPI.findSpaceById(id: id, spaceFields: spaceFields, expansions: expansions, userFields: userFields, topicFields: topicFields) { (response, error) in
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
 **id** | **String** | The ID of the Space to be retrieved. | 
 **spaceFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Space fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **topicFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Topic fields to display. | [optional] 

### Return type

[**Get2SpacesIdResponse**](Get2SpacesIdResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findSpacesByCreatorIds**
```swift
    open class func findSpacesByCreatorIds(userIds: [String], spaceFields: [SpaceFields_findSpacesByCreatorIds]? = nil, expansions: [Expansions_findSpacesByCreatorIds]? = nil, userFields: [UserFields_findSpacesByCreatorIds]? = nil, topicFields: [TopicFields_findSpacesByCreatorIds]? = nil, completion: @escaping (_ data: Get2SpacesByCreatorIdsResponse?, _ error: Error?) -> Void)
```

Space lookup by their creators

Returns a variety of information about the Spaces created by the provided User IDs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenTwitterAPIClient

let userIds = ["inner_example"] // [String] | The IDs of Users to search through.
let spaceFields = ["spaceFields_example"] // Set<String> | A comma separated list of Space fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let topicFields = ["topicFields_example"] // Set<String> | A comma separated list of Topic fields to display. (optional)

// Space lookup by their creators
SpacesAPI.findSpacesByCreatorIds(userIds: userIds, spaceFields: spaceFields, expansions: expansions, userFields: userFields, topicFields: topicFields) { (response, error) in
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
 **userIds** | [**[String]**](String.md) | The IDs of Users to search through. | 
 **spaceFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Space fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **topicFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Topic fields to display. | [optional] 

### Return type

[**Get2SpacesByCreatorIdsResponse**](Get2SpacesByCreatorIdsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findSpacesByIds**
```swift
    open class func findSpacesByIds(ids: [String], spaceFields: [SpaceFields_findSpacesByIds]? = nil, expansions: [Expansions_findSpacesByIds]? = nil, userFields: [UserFields_findSpacesByIds]? = nil, topicFields: [TopicFields_findSpacesByIds]? = nil, completion: @escaping (_ data: Get2SpacesResponse?, _ error: Error?) -> Void)
```

Space lookup up Space IDs

Returns a variety of information about the Spaces specified by the requested IDs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenTwitterAPIClient

let ids = ["inner_example"] // [String] | The list of Space IDs to return.
let spaceFields = ["spaceFields_example"] // Set<String> | A comma separated list of Space fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let topicFields = ["topicFields_example"] // Set<String> | A comma separated list of Topic fields to display. (optional)

// Space lookup up Space IDs
SpacesAPI.findSpacesByIds(ids: ids, spaceFields: spaceFields, expansions: expansions, userFields: userFields, topicFields: topicFields) { (response, error) in
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
 **ids** | [**[String]**](String.md) | The list of Space IDs to return. | 
 **spaceFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Space fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **topicFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Topic fields to display. | [optional] 

### Return type

[**Get2SpacesResponse**](Get2SpacesResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchSpaces**
```swift
    open class func searchSpaces(query: String, state: State_searchSpaces? = nil, maxResults: Int? = nil, spaceFields: [SpaceFields_searchSpaces]? = nil, expansions: [Expansions_searchSpaces]? = nil, userFields: [UserFields_searchSpaces]? = nil, topicFields: [TopicFields_searchSpaces]? = nil, completion: @escaping (_ data: Get2SpacesSearchResponse?, _ error: Error?) -> Void)
```

Search for Spaces

Returns Spaces that match the provided query.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenTwitterAPIClient

let query = "query_example" // String | The search query.
let state = "state_example" // String | The state of Spaces to search for. (optional) (default to .all)
let maxResults = 987 // Int | The number of results to return. (optional) (default to 100)
let spaceFields = ["spaceFields_example"] // Set<String> | A comma separated list of Space fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let topicFields = ["topicFields_example"] // Set<String> | A comma separated list of Topic fields to display. (optional)

// Search for Spaces
SpacesAPI.searchSpaces(query: query, state: state, maxResults: maxResults, spaceFields: spaceFields, expansions: expansions, userFields: userFields, topicFields: topicFields) { (response, error) in
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
 **query** | **String** | The search query. | 
 **state** | **String** | The state of Spaces to search for. | [optional] [default to .all]
 **maxResults** | **Int** | The number of results to return. | [optional] [default to 100]
 **spaceFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Space fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **topicFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Topic fields to display. | [optional] 

### Return type

[**Get2SpacesSearchResponse**](Get2SpacesSearchResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spaceBuyers**
```swift
    open class func spaceBuyers(id: String, paginationToken: String? = nil, maxResults: Int? = nil, userFields: [UserFields_spaceBuyers]? = nil, expansions: [Expansions_spaceBuyers]? = nil, tweetFields: [TweetFields_spaceBuyers]? = nil, completion: @escaping (_ data: Get2SpacesIdBuyersResponse?, _ error: Error?) -> Void)
```

Retrieve the list of Users who purchased a ticket to the given space

Retrieves the list of Users who purchased a ticket to the given space

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenTwitterAPIClient

let id = "id_example" // String | The ID of the Space to be retrieved.
let paginationToken = "paginationToken_example" // String | This parameter is used to get a specified 'page' of results. (optional)
let maxResults = 987 // Int | The maximum number of results. (optional) (default to 100)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)

// Retrieve the list of Users who purchased a ticket to the given space
SpacesAPI.spaceBuyers(id: id, paginationToken: paginationToken, maxResults: maxResults, userFields: userFields, expansions: expansions, tweetFields: tweetFields) { (response, error) in
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
 **id** | **String** | The ID of the Space to be retrieved. | 
 **paginationToken** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **maxResults** | **Int** | The maximum number of results. | [optional] [default to 100]
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 

### Return type

[**Get2SpacesIdBuyersResponse**](Get2SpacesIdBuyersResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **spaceTweets**
```swift
    open class func spaceTweets(id: String, maxResults: Int? = nil, tweetFields: [TweetFields_spaceTweets]? = nil, expansions: [Expansions_spaceTweets]? = nil, mediaFields: [MediaFields_spaceTweets]? = nil, pollFields: [PollFields_spaceTweets]? = nil, userFields: [UserFields_spaceTweets]? = nil, placeFields: [PlaceFields_spaceTweets]? = nil, completion: @escaping (_ data: Get2SpacesIdTweetsResponse?, _ error: Error?) -> Void)
```

Retrieve Tweets from a Space.

Retrieves Tweets shared in the specified Space.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenTwitterAPIClient

let id = "id_example" // String | The ID of the Space to be retrieved.
let maxResults = 987 // Int | The number of Tweets to fetch from the provided space. If not provided, the value will default to the maximum of 100. (optional) (default to 100)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)

// Retrieve Tweets from a Space.
SpacesAPI.spaceTweets(id: id, maxResults: maxResults, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields) { (response, error) in
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
 **id** | **String** | The ID of the Space to be retrieved. | 
 **maxResults** | **Int** | The number of Tweets to fetch from the provided space. If not provided, the value will default to the maximum of 100. | [optional] [default to 100]
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2SpacesIdTweetsResponse**](Get2SpacesIdTweetsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

