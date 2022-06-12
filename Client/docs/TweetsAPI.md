# TweetsAPI

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addOrDeleteRules**](TweetsAPI.md#addordeleterules) | **POST** /2/tweets/search/stream/rules | Add/Delete rules
[**createTweet**](TweetsAPI.md#createtweet) | **POST** /2/tweets | Creation of a Tweet
[**deleteTweetById**](TweetsAPI.md#deletetweetbyid) | **DELETE** /2/tweets/{id} | Tweet delete by Tweet ID
[**findTweetById**](TweetsAPI.md#findtweetbyid) | **GET** /2/tweets/{id} | Tweet lookup by Tweet ID
[**findTweetsById**](TweetsAPI.md#findtweetsbyid) | **GET** /2/tweets | Tweet lookup by Tweet IDs
[**findTweetsThatQuoteATweet**](TweetsAPI.md#findtweetsthatquoteatweet) | **GET** /2/tweets/{id}/quote_tweets | Retrieve Tweets that quote a Tweet.
[**getRules**](TweetsAPI.md#getrules) | **GET** /2/tweets/search/stream/rules | Rules lookup
[**hideReplyById**](TweetsAPI.md#hidereplybyid) | **PUT** /2/tweets/{tweet_id}/hidden | Hide replies
[**listsIdTweets**](TweetsAPI.md#listsidtweets) | **GET** /2/lists/{id}/tweets | List Tweets timeline by List ID.
[**sampleStream**](TweetsAPI.md#samplestream) | **GET** /2/tweets/sample/stream | Sample stream
[**searchStream**](TweetsAPI.md#searchstream) | **GET** /2/tweets/search/stream | Filtered stream
[**spaceBuyers**](TweetsAPI.md#spacebuyers) | **GET** /2/spaces/{id}/buyers | Retrieve the list of Users who purchased a ticket to the given space
[**spaceTweets**](TweetsAPI.md#spacetweets) | **GET** /2/spaces/{id}/tweets | Retrieve Tweets from a Space.
[**tweetCountsFullArchiveSearch**](TweetsAPI.md#tweetcountsfullarchivesearch) | **GET** /2/tweets/counts/all | Full archive search counts
[**tweetCountsRecentSearch**](TweetsAPI.md#tweetcountsrecentsearch) | **GET** /2/tweets/counts/recent | Recent search counts
[**tweetsFullarchiveSearch**](TweetsAPI.md#tweetsfullarchivesearch) | **GET** /2/tweets/search/all | Full-archive search
[**tweetsRecentSearch**](TweetsAPI.md#tweetsrecentsearch) | **GET** /2/tweets/search/recent | Recent search
[**usersIdLike**](TweetsAPI.md#usersidlike) | **POST** /2/users/{id}/likes | Causes the User (in the path) to like the specified Tweet
[**usersIdLikedTweets**](TweetsAPI.md#usersidlikedtweets) | **GET** /2/users/{id}/liked_tweets | Returns Tweet objects liked by the provided User ID
[**usersIdMentions**](TweetsAPI.md#usersidmentions) | **GET** /2/users/{id}/mentions | User mention timeline by User ID
[**usersIdRetweets**](TweetsAPI.md#usersidretweets) | **POST** /2/users/{id}/retweets | Causes the User (in the path) to retweet the specified Tweet.
[**usersIdTimeline**](TweetsAPI.md#usersidtimeline) | **GET** /2/users/{id}/timelines/reverse_chronological | User home timeline by User ID
[**usersIdTweets**](TweetsAPI.md#usersidtweets) | **GET** /2/users/{id}/tweets | User Tweets timeline by User ID
[**usersIdUnlike**](TweetsAPI.md#usersidunlike) | **DELETE** /2/users/{id}/likes/{tweet_id} | Causes the User (in the path) to unlike the specified Tweet
[**usersIdUnretweets**](TweetsAPI.md#usersidunretweets) | **DELETE** /2/users/{id}/retweets/{source_tweet_id} | Causes the User (in the path) to unretweet the specified Tweet


# **addOrDeleteRules**
```swift
    open class func addOrDeleteRules(addOrDeleteRulesRequest: AddOrDeleteRulesRequest, dryRun: Bool? = nil, completion: @escaping (_ data: AddOrDeleteRulesResponse?, _ error: Error?) -> Void)
```

Add/Delete rules

Add or delete rules from a User's active rule set. Users can provide unique, optionally tagged rules to add. Users can delete their entire rule set or a subset specified by rule ids or values.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let addOrDeleteRulesRequest = AddOrDeleteRulesRequest(add: [RuleNoId(tag: "tag_example", value: "value_example")], delete: DeleteRulesRequest_delete(ids: ["ids_example"], values: ["values_example"])) // AddOrDeleteRulesRequest | 
let dryRun = true // Bool | Dry Run can be used with both the add and delete action, with the expected result given, but without actually taking any action in the system (meaning the end state will always be as it was when the request was submitted). This is particularly useful to validate rule changes. (optional)

// Add/Delete rules
TweetsAPI.addOrDeleteRules(addOrDeleteRulesRequest: addOrDeleteRulesRequest, dryRun: dryRun) { (response, error) in
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
 **addOrDeleteRulesRequest** | [**AddOrDeleteRulesRequest**](AddOrDeleteRulesRequest.md) |  | 
 **dryRun** | **Bool** | Dry Run can be used with both the add and delete action, with the expected result given, but without actually taking any action in the system (meaning the end state will always be as it was when the request was submitted). This is particularly useful to validate rule changes. | [optional] 

### Return type

[**AddOrDeleteRulesResponse**](AddOrDeleteRulesResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTweet**
```swift
    open class func createTweet(tweetCreateRequest: TweetCreateRequest, completion: @escaping (_ data: TweetCreateResponse?, _ error: Error?) -> Void)
```

Creation of a Tweet

Causes the User to create a Tweet under the authorized account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tweetCreateRequest = TweetCreateRequest(directMessageDeepLink: "directMessageDeepLink_example", forSuperFollowersOnly: false, geo: TweetCreateRequest_geo(placeId: "placeId_example"), media: TweetCreateRequest_media(mediaIds: ["mediaIds_example"], taggedUserIds: ["taggedUserIds_example"]), poll: TweetCreateRequest_poll(durationMinutes: 123, options: ["options_example"], replySettings: "replySettings_example"), quoteTweetId: "quoteTweetId_example", reply: TweetCreateRequest_reply(excludeReplyUserIds: ["excludeReplyUserIds_example"], inReplyToTweetId: "inReplyToTweetId_example"), replySettings: "replySettings_example", text: "text_example") // TweetCreateRequest | 

// Creation of a Tweet
TweetsAPI.createTweet(tweetCreateRequest: tweetCreateRequest) { (response, error) in
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
 **tweetCreateRequest** | [**TweetCreateRequest**](TweetCreateRequest.md) |  | 

### Return type

[**TweetCreateResponse**](TweetCreateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTweetById**
```swift
    open class func deleteTweetById(id: String, completion: @escaping (_ data: TweetDeleteResponse?, _ error: Error?) -> Void)
```

Tweet delete by Tweet ID

Delete specified Tweet (in the path) by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the Tweet to be deleted.

// Tweet delete by Tweet ID
TweetsAPI.deleteTweetById(id: id) { (response, error) in
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
 **id** | **String** | The ID of the Tweet to be deleted. | 

### Return type

[**TweetDeleteResponse**](TweetDeleteResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findTweetById**
```swift
    open class func findTweetById(id: String, tweetFields: [TweetFields_findTweetById]? = nil, expansions: [Expansions_findTweetById]? = nil, mediaFields: [MediaFields_findTweetById]? = nil, pollFields: [PollFields_findTweetById]? = nil, userFields: [UserFields_findTweetById]? = nil, placeFields: [PlaceFields_findTweetById]? = nil, completion: @escaping (_ data: Get2TweetsIdResponse?, _ error: Error?) -> Void)
```

Tweet lookup by Tweet ID

Returns a variety of information about the Tweet specified by the requested ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | A single Tweet ID.
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)

// Tweet lookup by Tweet ID
TweetsAPI.findTweetById(id: id, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields) { (response, error) in
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
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2TweetsIdResponse**](Get2TweetsIdResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findTweetsById**
```swift
    open class func findTweetsById(ids: [String], tweetFields: [TweetFields_findTweetsById]? = nil, expansions: [Expansions_findTweetsById]? = nil, mediaFields: [MediaFields_findTweetsById]? = nil, pollFields: [PollFields_findTweetsById]? = nil, userFields: [UserFields_findTweetsById]? = nil, placeFields: [PlaceFields_findTweetsById]? = nil, completion: @escaping (_ data: Get2TweetsResponse?, _ error: Error?) -> Void)
```

Tweet lookup by Tweet IDs

Returns a variety of information about the Tweet specified by the requested ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ids = ["inner_example"] // [String] | A comma separated list of Tweet IDs. Up to 100 are allowed in a single request.
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)

// Tweet lookup by Tweet IDs
TweetsAPI.findTweetsById(ids: ids, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields) { (response, error) in
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
 **ids** | [**[String]**](String.md) | A comma separated list of Tweet IDs. Up to 100 are allowed in a single request. | 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2TweetsResponse**](Get2TweetsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findTweetsThatQuoteATweet**
```swift
    open class func findTweetsThatQuoteATweet(id: String, maxResults: Int? = nil, paginationToken: String? = nil, exclude: [Exclude_findTweetsThatQuoteATweet]? = nil, tweetFields: [TweetFields_findTweetsThatQuoteATweet]? = nil, expansions: [Expansions_findTweetsThatQuoteATweet]? = nil, mediaFields: [MediaFields_findTweetsThatQuoteATweet]? = nil, pollFields: [PollFields_findTweetsThatQuoteATweet]? = nil, userFields: [UserFields_findTweetsThatQuoteATweet]? = nil, placeFields: [PlaceFields_findTweetsThatQuoteATweet]? = nil, completion: @escaping (_ data: Get2TweetsIdQuoteTweetsResponse?, _ error: Error?) -> Void)
```

Retrieve Tweets that quote a Tweet.

Returns a variety of information about each Tweet that quotes the Tweet specified by the requested ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | A single Tweet ID.
let maxResults = 987 // Int | The maximum number of results to be returned. (optional) (default to 10)
let paginationToken = "paginationToken_example" // String | This parameter is used to get a specified 'page' of results. (optional)
let exclude = ["exclude_example"] // Set<String> | The set of entities to exclude (e.g. 'replies' or 'retweets'). (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)

// Retrieve Tweets that quote a Tweet.
TweetsAPI.findTweetsThatQuoteATweet(id: id, maxResults: maxResults, paginationToken: paginationToken, exclude: exclude, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields) { (response, error) in
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
 **maxResults** | **Int** | The maximum number of results to be returned. | [optional] [default to 10]
 **paginationToken** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] 
 **exclude** | [**Set&lt;String&gt;**](String.md) | The set of entities to exclude (e.g. &#39;replies&#39; or &#39;retweets&#39;). | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2TweetsIdQuoteTweetsResponse**](Get2TweetsIdQuoteTweetsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRules**
```swift
    open class func getRules(ids: [String]? = nil, maxResults: Int? = nil, paginationToken: String? = nil, completion: @escaping (_ data: RulesLookupResponse?, _ error: Error?) -> Void)
```

Rules lookup

Returns rules from a User's active rule set. Users can fetch all of their rules or a subset, specified by the provided rule ids.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ids = ["inner_example"] // [String] | A comma-separated list of Rule IDs. (optional)
let maxResults = 987 // Int | The maximum number of results. (optional) (default to 1000)
let paginationToken = "paginationToken_example" // String | This value is populated by passing the 'next_token' returned in a request to paginate through results. (optional)

// Rules lookup
TweetsAPI.getRules(ids: ids, maxResults: maxResults, paginationToken: paginationToken) { (response, error) in
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
 **ids** | [**[String]**](String.md) | A comma-separated list of Rule IDs. | [optional] 
 **maxResults** | **Int** | The maximum number of results. | [optional] [default to 1000]
 **paginationToken** | **String** | This value is populated by passing the &#39;next_token&#39; returned in a request to paginate through results. | [optional] 

### Return type

[**RulesLookupResponse**](RulesLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hideReplyById**
```swift
    open class func hideReplyById(tweetId: String, tweetHideRequest: TweetHideRequest? = nil, completion: @escaping (_ data: TweetHideResponse?, _ error: Error?) -> Void)
```

Hide replies

Hides or unhides a reply to an owned conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tweetId = "tweetId_example" // String | The ID of the reply that you want to hide or unhide.
let tweetHideRequest = TweetHideRequest(hidden: false) // TweetHideRequest |  (optional)

// Hide replies
TweetsAPI.hideReplyById(tweetId: tweetId, tweetHideRequest: tweetHideRequest) { (response, error) in
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
 **tweetId** | **String** | The ID of the reply that you want to hide or unhide. | 
 **tweetHideRequest** | [**TweetHideRequest**](TweetHideRequest.md) |  | [optional] 

### Return type

[**TweetHideResponse**](TweetHideResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listsIdTweets**
```swift
    open class func listsIdTweets(id: String, maxResults: Int? = nil, paginationToken: String? = nil, tweetFields: [TweetFields_listsIdTweets]? = nil, expansions: [Expansions_listsIdTweets]? = nil, mediaFields: [MediaFields_listsIdTweets]? = nil, pollFields: [PollFields_listsIdTweets]? = nil, userFields: [UserFields_listsIdTweets]? = nil, placeFields: [PlaceFields_listsIdTweets]? = nil, completion: @escaping (_ data: Get2ListsIdTweetsResponse?, _ error: Error?) -> Void)
```

List Tweets timeline by List ID.

Returns a list of Tweets associated with the provided List ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the List.
let maxResults = 987 // Int | The maximum number of results. (optional) (default to 100)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)

// List Tweets timeline by List ID.
TweetsAPI.listsIdTweets(id: id, maxResults: maxResults, paginationToken: paginationToken, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields) { (response, error) in
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
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2ListsIdTweetsResponse**](Get2ListsIdTweetsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sampleStream**
```swift
    open class func sampleStream(backfillMinutes: Int? = nil, tweetFields: [TweetFields_sampleStream]? = nil, expansions: [Expansions_sampleStream]? = nil, mediaFields: [MediaFields_sampleStream]? = nil, pollFields: [PollFields_sampleStream]? = nil, userFields: [UserFields_sampleStream]? = nil, placeFields: [PlaceFields_sampleStream]? = nil, completion: @escaping (_ data: StreamingTweetResponse?, _ error: Error?) -> Void)
```

Sample stream

Streams a deterministic 1% of public Tweets.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let backfillMinutes = 987 // Int | The number of minutes of backfill requested. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)

// Sample stream
TweetsAPI.sampleStream(backfillMinutes: backfillMinutes, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields) { (response, error) in
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
 **backfillMinutes** | **Int** | The number of minutes of backfill requested. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 

### Return type

[**StreamingTweetResponse**](StreamingTweetResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchStream**
```swift
    open class func searchStream(backfillMinutes: Int? = nil, tweetFields: [TweetFields_searchStream]? = nil, expansions: [Expansions_searchStream]? = nil, mediaFields: [MediaFields_searchStream]? = nil, pollFields: [PollFields_searchStream]? = nil, userFields: [UserFields_searchStream]? = nil, placeFields: [PlaceFields_searchStream]? = nil, completion: @escaping (_ data: FilteredStreamingTweetResponse?, _ error: Error?) -> Void)
```

Filtered stream

Streams Tweets matching the stream's active rule set.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let backfillMinutes = 987 // Int | The number of minutes of backfill requested. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)

// Filtered stream
TweetsAPI.searchStream(backfillMinutes: backfillMinutes, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields) { (response, error) in
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
 **backfillMinutes** | **Int** | The number of minutes of backfill requested. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 

### Return type

[**FilteredStreamingTweetResponse**](FilteredStreamingTweetResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

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
import OpenAPIClient

let id = "id_example" // String | The ID of the Space to be retrieved.
let paginationToken = "paginationToken_example" // String | This parameter is used to get a specified 'page' of results. (optional)
let maxResults = 987 // Int | The maximum number of results. (optional) (default to 100)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)

// Retrieve the list of Users who purchased a ticket to the given space
TweetsAPI.spaceBuyers(id: id, paginationToken: paginationToken, maxResults: maxResults, userFields: userFields, expansions: expansions, tweetFields: tweetFields) { (response, error) in
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
import OpenAPIClient

let id = "id_example" // String | The ID of the Space to be retrieved.
let maxResults = 987 // Int | The number of Tweets to fetch from the provided space. If not provided, the value will default to the maximum of 100. (optional) (default to 100)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)

// Retrieve Tweets from a Space.
TweetsAPI.spaceTweets(id: id, maxResults: maxResults, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields) { (response, error) in
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

# **tweetCountsFullArchiveSearch**
```swift
    open class func tweetCountsFullArchiveSearch(query: String, startTime: Date? = nil, endTime: Date? = nil, sinceId: String? = nil, untilId: String? = nil, nextToken: String? = nil, paginationToken: String? = nil, granularity: Granularity_tweetCountsFullArchiveSearch? = nil, searchCountFields: [SearchCountFields_tweetCountsFullArchiveSearch]? = nil, completion: @escaping (_ data: Get2TweetsCountsAllResponse?, _ error: Error?) -> Void)
```

Full archive search counts

Returns Tweet Counts that match a search query.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = "query_example" // String | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
let startTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). (optional)
let endTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). (optional)
let sinceId = "sinceId_example" // String | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. (optional)
let untilId = "untilId_example" // String | Returns results with a Tweet ID less than (that is, older than) the specified ID. (optional)
let nextToken = "nextToken_example" // String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (optional)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (optional)
let granularity = "granularity_example" // String | The granularity for the search counts results. (optional) (default to .hour)
let searchCountFields = ["searchCountFields_example"] // Set<String> | A comma separated list of SearchCount fields to display. (optional)

// Full archive search counts
TweetsAPI.tweetCountsFullArchiveSearch(query: query, startTime: startTime, endTime: endTime, sinceId: sinceId, untilId: untilId, nextToken: nextToken, paginationToken: paginationToken, granularity: granularity, searchCountFields: searchCountFields) { (response, error) in
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
 **query** | **String** | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length. | 
 **startTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] 
 **endTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] 
 **sinceId** | **String** | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] 
 **untilId** | **String** | Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] 
 **nextToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **granularity** | **String** | The granularity for the search counts results. | [optional] [default to .hour]
 **searchCountFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of SearchCount fields to display. | [optional] 

### Return type

[**Get2TweetsCountsAllResponse**](Get2TweetsCountsAllResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tweetCountsRecentSearch**
```swift
    open class func tweetCountsRecentSearch(query: String, startTime: Date? = nil, endTime: Date? = nil, sinceId: String? = nil, untilId: String? = nil, nextToken: String? = nil, paginationToken: String? = nil, granularity: Granularity_tweetCountsRecentSearch? = nil, searchCountFields: [SearchCountFields_tweetCountsRecentSearch]? = nil, completion: @escaping (_ data: Get2TweetsCountsRecentResponse?, _ error: Error?) -> Void)
```

Recent search counts

Returns Tweet Counts from the last 7 days that match a search query.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = "query_example" // String | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
let startTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). (optional)
let endTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). (optional)
let sinceId = "sinceId_example" // String | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. (optional)
let untilId = "untilId_example" // String | Returns results with a Tweet ID less than (that is, older than) the specified ID. (optional)
let nextToken = "nextToken_example" // String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (optional)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (optional)
let granularity = "granularity_example" // String | The granularity for the search counts results. (optional) (default to .hour)
let searchCountFields = ["searchCountFields_example"] // Set<String> | A comma separated list of SearchCount fields to display. (optional)

// Recent search counts
TweetsAPI.tweetCountsRecentSearch(query: query, startTime: startTime, endTime: endTime, sinceId: sinceId, untilId: untilId, nextToken: nextToken, paginationToken: paginationToken, granularity: granularity, searchCountFields: searchCountFields) { (response, error) in
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
 **query** | **String** | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length. | 
 **startTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] 
 **endTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] 
 **sinceId** | **String** | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] 
 **untilId** | **String** | Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] 
 **nextToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **granularity** | **String** | The granularity for the search counts results. | [optional] [default to .hour]
 **searchCountFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of SearchCount fields to display. | [optional] 

### Return type

[**Get2TweetsCountsRecentResponse**](Get2TweetsCountsRecentResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tweetsFullarchiveSearch**
```swift
    open class func tweetsFullarchiveSearch(query: String, startTime: Date? = nil, endTime: Date? = nil, sinceId: String? = nil, untilId: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, paginationToken: String? = nil, sortOrder: SortOrder_tweetsFullarchiveSearch? = nil, tweetFields: [TweetFields_tweetsFullarchiveSearch]? = nil, expansions: [Expansions_tweetsFullarchiveSearch]? = nil, mediaFields: [MediaFields_tweetsFullarchiveSearch]? = nil, pollFields: [PollFields_tweetsFullarchiveSearch]? = nil, userFields: [UserFields_tweetsFullarchiveSearch]? = nil, placeFields: [PlaceFields_tweetsFullarchiveSearch]? = nil, completion: @escaping (_ data: Get2TweetsSearchAllResponse?, _ error: Error?) -> Void)
```

Full-archive search

Returns Tweets that match a search query.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = "query_example" // String | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
let startTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). (optional)
let endTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). (optional)
let sinceId = "sinceId_example" // String | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. (optional)
let untilId = "untilId_example" // String | Returns results with a Tweet ID less than (that is, older than) the specified ID. (optional)
let maxResults = 987 // Int | The maximum number of search results to be returned by a request. (optional) (default to 10)
let nextToken = "nextToken_example" // String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (optional)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (optional)
let sortOrder = "sortOrder_example" // String | This order in which to return results. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)

// Full-archive search
TweetsAPI.tweetsFullarchiveSearch(query: query, startTime: startTime, endTime: endTime, sinceId: sinceId, untilId: untilId, maxResults: maxResults, nextToken: nextToken, paginationToken: paginationToken, sortOrder: sortOrder, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields) { (response, error) in
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
 **query** | **String** | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length. | 
 **startTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] 
 **endTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] 
 **sinceId** | **String** | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] 
 **untilId** | **String** | Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] 
 **maxResults** | **Int** | The maximum number of search results to be returned by a request. | [optional] [default to 10]
 **nextToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **sortOrder** | **String** | This order in which to return results. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2TweetsSearchAllResponse**](Get2TweetsSearchAllResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tweetsRecentSearch**
```swift
    open class func tweetsRecentSearch(query: String, startTime: Date? = nil, endTime: Date? = nil, sinceId: String? = nil, untilId: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, paginationToken: String? = nil, sortOrder: SortOrder_tweetsRecentSearch? = nil, tweetFields: [TweetFields_tweetsRecentSearch]? = nil, expansions: [Expansions_tweetsRecentSearch]? = nil, mediaFields: [MediaFields_tweetsRecentSearch]? = nil, pollFields: [PollFields_tweetsRecentSearch]? = nil, userFields: [UserFields_tweetsRecentSearch]? = nil, placeFields: [PlaceFields_tweetsRecentSearch]? = nil, completion: @escaping (_ data: Get2TweetsSearchRecentResponse?, _ error: Error?) -> Void)
```

Recent search

Returns Tweets from the last 7 days that match a search query.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = "query_example" // String | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
let startTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). (optional)
let endTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). (optional)
let sinceId = "sinceId_example" // String | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. (optional)
let untilId = "untilId_example" // String | Returns results with a Tweet ID less than (that is, older than) the specified ID. (optional)
let maxResults = 987 // Int | The maximum number of search results to be returned by a request. (optional) (default to 10)
let nextToken = "nextToken_example" // String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (optional)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (optional)
let sortOrder = "sortOrder_example" // String | This order in which to return results. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)

// Recent search
TweetsAPI.tweetsRecentSearch(query: query, startTime: startTime, endTime: endTime, sinceId: sinceId, untilId: untilId, maxResults: maxResults, nextToken: nextToken, paginationToken: paginationToken, sortOrder: sortOrder, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields) { (response, error) in
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
 **query** | **String** | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length. | 
 **startTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] 
 **endTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] 
 **sinceId** | **String** | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] 
 **untilId** | **String** | Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] 
 **maxResults** | **Int** | The maximum number of search results to be returned by a request. | [optional] [default to 10]
 **nextToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **sortOrder** | **String** | This order in which to return results. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2TweetsSearchRecentResponse**](Get2TweetsSearchRecentResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdLike**
```swift
    open class func usersIdLike(id: String, usersLikesCreateRequest: UsersLikesCreateRequest? = nil, completion: @escaping (_ data: UsersLikesCreateResponse?, _ error: Error?) -> Void)
```

Causes the User (in the path) to like the specified Tweet

Causes the User (in the path) to like the specified Tweet. The User in the path must match the User context authorizing the request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source User that is requesting to like the Tweet.
let usersLikesCreateRequest = UsersLikesCreateRequest(tweetId: "tweetId_example") // UsersLikesCreateRequest |  (optional)

// Causes the User (in the path) to like the specified Tweet
TweetsAPI.usersIdLike(id: id, usersLikesCreateRequest: usersLikesCreateRequest) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source User that is requesting to like the Tweet. | 
 **usersLikesCreateRequest** | [**UsersLikesCreateRequest**](UsersLikesCreateRequest.md) |  | [optional] 

### Return type

[**UsersLikesCreateResponse**](UsersLikesCreateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdLikedTweets**
```swift
    open class func usersIdLikedTweets(id: String, maxResults: Int? = nil, paginationToken: String? = nil, tweetFields: [TweetFields_usersIdLikedTweets]? = nil, expansions: [Expansions_usersIdLikedTweets]? = nil, mediaFields: [MediaFields_usersIdLikedTweets]? = nil, pollFields: [PollFields_usersIdLikedTweets]? = nil, userFields: [UserFields_usersIdLikedTweets]? = nil, placeFields: [PlaceFields_usersIdLikedTweets]? = nil, completion: @escaping (_ data: Get2UsersIdLikedTweetsResponse?, _ error: Error?) -> Void)
```

Returns Tweet objects liked by the provided User ID

Returns a list of Tweets liked by the provided User ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the User to lookup.
let maxResults = 987 // Int | The maximum number of results. (optional)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)

// Returns Tweet objects liked by the provided User ID
TweetsAPI.usersIdLikedTweets(id: id, maxResults: maxResults, paginationToken: paginationToken, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields) { (response, error) in
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
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2UsersIdLikedTweetsResponse**](Get2UsersIdLikedTweetsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdMentions**
```swift
    open class func usersIdMentions(id: String, sinceId: String? = nil, untilId: String? = nil, maxResults: Int? = nil, paginationToken: String? = nil, startTime: Date? = nil, endTime: Date? = nil, tweetFields: [TweetFields_usersIdMentions]? = nil, expansions: [Expansions_usersIdMentions]? = nil, mediaFields: [MediaFields_usersIdMentions]? = nil, pollFields: [PollFields_usersIdMentions]? = nil, userFields: [UserFields_usersIdMentions]? = nil, placeFields: [PlaceFields_usersIdMentions]? = nil, completion: @escaping (_ data: Get2UsersIdMentionsResponse?, _ error: Error?) -> Void)
```

User mention timeline by User ID

Returns Tweet objects that mention username associated to the provided User ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the User to lookup.
let sinceId = "sinceId_example" // String | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. (optional)
let untilId = "untilId_example" // String | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. (optional)
let maxResults = 987 // Int | The maximum number of results. (optional)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. (optional)
let startTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. (optional)
let endTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)

// User mention timeline by User ID
TweetsAPI.usersIdMentions(id: id, sinceId: sinceId, untilId: untilId, maxResults: maxResults, paginationToken: paginationToken, startTime: startTime, endTime: endTime, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields) { (response, error) in
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
 **sinceId** | **String** | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. | [optional] 
 **untilId** | **String** | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. | [optional] 
 **maxResults** | **Int** | The maximum number of results. | [optional] 
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **startTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. | [optional] 
 **endTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2UsersIdMentionsResponse**](Get2UsersIdMentionsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdRetweets**
```swift
    open class func usersIdRetweets(id: String, usersRetweetsCreateRequest: UsersRetweetsCreateRequest? = nil, completion: @escaping (_ data: UsersRetweetsCreateResponse?, _ error: Error?) -> Void)
```

Causes the User (in the path) to retweet the specified Tweet.

Causes the User (in the path) to retweet the specified Tweet. The User in the path must match the User context authorizing the request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source User that is requesting to retweet the Tweet.
let usersRetweetsCreateRequest = UsersRetweetsCreateRequest(tweetId: "tweetId_example") // UsersRetweetsCreateRequest |  (optional)

// Causes the User (in the path) to retweet the specified Tweet.
TweetsAPI.usersIdRetweets(id: id, usersRetweetsCreateRequest: usersRetweetsCreateRequest) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source User that is requesting to retweet the Tweet. | 
 **usersRetweetsCreateRequest** | [**UsersRetweetsCreateRequest**](UsersRetweetsCreateRequest.md) |  | [optional] 

### Return type

[**UsersRetweetsCreateResponse**](UsersRetweetsCreateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdTimeline**
```swift
    open class func usersIdTimeline(id: String, sinceId: String? = nil, untilId: String? = nil, maxResults: Int? = nil, paginationToken: String? = nil, exclude: [Exclude_usersIdTimeline]? = nil, startTime: Date? = nil, endTime: Date? = nil, tweetFields: [TweetFields_usersIdTimeline]? = nil, expansions: [Expansions_usersIdTimeline]? = nil, mediaFields: [MediaFields_usersIdTimeline]? = nil, pollFields: [PollFields_usersIdTimeline]? = nil, userFields: [UserFields_usersIdTimeline]? = nil, placeFields: [PlaceFields_usersIdTimeline]? = nil, completion: @escaping (_ data: Get2UsersIdTimelinesReverseChronologicalResponse?, _ error: Error?) -> Void)
```

User home timeline by User ID

Returns Tweet objects that appears in the provided User ID's home timeline

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source User to list Reverse Chronological Timeline Tweets of.
let sinceId = "sinceId_example" // String | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. (optional)
let untilId = "untilId_example" // String | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. (optional)
let maxResults = 987 // Int | The maximum number of results. (optional)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. (optional)
let exclude = ["exclude_example"] // Set<String> | The set of entities to exclude (e.g. 'replies' or 'retweets'). (optional)
let startTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. (optional)
let endTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)

// User home timeline by User ID
TweetsAPI.usersIdTimeline(id: id, sinceId: sinceId, untilId: untilId, maxResults: maxResults, paginationToken: paginationToken, exclude: exclude, startTime: startTime, endTime: endTime, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source User to list Reverse Chronological Timeline Tweets of. | 
 **sinceId** | **String** | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. | [optional] 
 **untilId** | **String** | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. | [optional] 
 **maxResults** | **Int** | The maximum number of results. | [optional] 
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **exclude** | [**Set&lt;String&gt;**](String.md) | The set of entities to exclude (e.g. &#39;replies&#39; or &#39;retweets&#39;). | [optional] 
 **startTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. | [optional] 
 **endTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2UsersIdTimelinesReverseChronologicalResponse**](Get2UsersIdTimelinesReverseChronologicalResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdTweets**
```swift
    open class func usersIdTweets(id: String, sinceId: String? = nil, untilId: String? = nil, maxResults: Int? = nil, paginationToken: String? = nil, exclude: [Exclude_usersIdTweets]? = nil, startTime: Date? = nil, endTime: Date? = nil, tweetFields: [TweetFields_usersIdTweets]? = nil, expansions: [Expansions_usersIdTweets]? = nil, mediaFields: [MediaFields_usersIdTweets]? = nil, pollFields: [PollFields_usersIdTweets]? = nil, userFields: [UserFields_usersIdTweets]? = nil, placeFields: [PlaceFields_usersIdTweets]? = nil, completion: @escaping (_ data: Get2UsersIdTweetsResponse?, _ error: Error?) -> Void)
```

User Tweets timeline by User ID

Returns a list of Tweets authored by the provided User ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the User to lookup.
let sinceId = "sinceId_example" // String | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. (optional)
let untilId = "untilId_example" // String | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. (optional)
let maxResults = 987 // Int | The maximum number of results. (optional)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. (optional)
let exclude = ["exclude_example"] // Set<String> | The set of entities to exclude (e.g. 'replies' or 'retweets'). (optional)
let startTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. (optional)
let endTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)

// User Tweets timeline by User ID
TweetsAPI.usersIdTweets(id: id, sinceId: sinceId, untilId: untilId, maxResults: maxResults, paginationToken: paginationToken, exclude: exclude, startTime: startTime, endTime: endTime, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields) { (response, error) in
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
 **sinceId** | **String** | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. | [optional] 
 **untilId** | **String** | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. | [optional] 
 **maxResults** | **Int** | The maximum number of results. | [optional] 
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **exclude** | [**Set&lt;String&gt;**](String.md) | The set of entities to exclude (e.g. &#39;replies&#39; or &#39;retweets&#39;). | [optional] 
 **startTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. | [optional] 
 **endTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 

### Return type

[**Get2UsersIdTweetsResponse**](Get2UsersIdTweetsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdUnlike**
```swift
    open class func usersIdUnlike(id: String, tweetId: String, completion: @escaping (_ data: UsersLikesDeleteResponse?, _ error: Error?) -> Void)
```

Causes the User (in the path) to unlike the specified Tweet

Causes the User (in the path) to unlike the specified Tweet. The User must match the User context authorizing the request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source User that is requesting to unlike the Tweet.
let tweetId = "tweetId_example" // String | The ID of the Tweet that the User is requesting to unlike.

// Causes the User (in the path) to unlike the specified Tweet
TweetsAPI.usersIdUnlike(id: id, tweetId: tweetId) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source User that is requesting to unlike the Tweet. | 
 **tweetId** | **String** | The ID of the Tweet that the User is requesting to unlike. | 

### Return type

[**UsersLikesDeleteResponse**](UsersLikesDeleteResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdUnretweets**
```swift
    open class func usersIdUnretweets(id: String, sourceTweetId: String, completion: @escaping (_ data: UsersRetweetsDeleteResponse?, _ error: Error?) -> Void)
```

Causes the User (in the path) to unretweet the specified Tweet

Causes the User (in the path) to unretweet the specified Tweet. The User must match the User context authorizing the request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the authenticated source User that is requesting to retweet the Tweet.
let sourceTweetId = "sourceTweetId_example" // String | The ID of the Tweet that the User is requesting to unretweet.

// Causes the User (in the path) to unretweet the specified Tweet
TweetsAPI.usersIdUnretweets(id: id, sourceTweetId: sourceTweetId) { (response, error) in
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
 **id** | **String** | The ID of the authenticated source User that is requesting to retweet the Tweet. | 
 **sourceTweetId** | **String** | The ID of the Tweet that the User is requesting to unretweet. | 

### Return type

[**UsersRetweetsDeleteResponse**](UsersRetweetsDeleteResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

