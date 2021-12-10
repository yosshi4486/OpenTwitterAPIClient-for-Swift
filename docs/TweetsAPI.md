# TweetsAPI

All URIs are relative to *https://api.twitter.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addOrDeleteRules**](TweetsAPI.md#addordeleterules) | **POST** /2/tweets/search/stream/rules | Add/Delete rules
[**createTweet**](TweetsAPI.md#createtweet) | **POST** /2/tweets | Creation of a Tweet
[**deleteTweetById**](TweetsAPI.md#deletetweetbyid) | **DELETE** /2/tweets/{id} | Tweet delete by Tweet ID
[**findTweetById**](TweetsAPI.md#findtweetbyid) | **GET** /2/tweets/{id} | Tweet lookup by Tweet ID
[**findTweetsById**](TweetsAPI.md#findtweetsbyid) | **GET** /2/tweets | Tweet lookup by Tweet IDs
[**getRules**](TweetsAPI.md#getrules) | **GET** /2/tweets/search/stream/rules | Rules lookup
[**hideReplyById**](TweetsAPI.md#hidereplybyid) | **PUT** /2/tweets/{id}/hidden | Hide replies
[**listsIdTweets**](TweetsAPI.md#listsidtweets) | **GET** /2/lists/{id}/tweets | List Tweets timeline by List ID
[**sampleStream**](TweetsAPI.md#samplestream) | **GET** /2/tweets/sample/stream | Sample stream
[**searchStream**](TweetsAPI.md#searchstream) | **GET** /2/tweets/search/stream | Filtered stream
[**spaceBuyers**](TweetsAPI.md#spacebuyers) | **GET** /2/spaces/{id}/buyers | Retrieve the list of users who purchased a ticket to the given space
[**tweetCountsFullArchiveSearch**](TweetsAPI.md#tweetcountsfullarchivesearch) | **GET** /2/tweets/counts/all | Full archive search counts
[**tweetCountsRecentSearch**](TweetsAPI.md#tweetcountsrecentsearch) | **GET** /2/tweets/counts/recent | Recent search counts
[**tweetsFullarchiveSearch**](TweetsAPI.md#tweetsfullarchivesearch) | **GET** /2/tweets/search/all | Full-archive search
[**tweetsRecentSearch**](TweetsAPI.md#tweetsrecentsearch) | **GET** /2/tweets/search/recent | Recent search
[**usersIdLike**](TweetsAPI.md#usersidlike) | **POST** /2/users/{id}/likes | Causes the user (in the path) to like the specified tweet
[**usersIdLikedTweets**](TweetsAPI.md#usersidlikedtweets) | **GET** /2/users/{id}/liked_tweets | Returns Tweet objects liked by the provided User ID
[**usersIdMentions**](TweetsAPI.md#usersidmentions) | **GET** /2/users/{id}/mentions | User mention timeline by User ID
[**usersIdRetweets**](TweetsAPI.md#usersidretweets) | **POST** /2/users/{id}/retweets | Causes the user (in the path) to retweet the specified tweet
[**usersIdTweets**](TweetsAPI.md#usersidtweets) | **GET** /2/users/{id}/tweets | User Tweets timeline by User ID
[**usersIdUnlike**](TweetsAPI.md#usersidunlike) | **DELETE** /2/users/{id}/likes/{tweet_id} | Causes the user (in the path) to unlike the specified tweet
[**usersIdUnretweets**](TweetsAPI.md#usersidunretweets) | **DELETE** /2/users/{id}/retweets/{source_tweet_id} | Causes the user (in the path) to unretweet the specified tweet


# **addOrDeleteRules**
```swift
    open class func addOrDeleteRules(addOrDeleteRulesRequest: AddOrDeleteRulesRequest, dryRun: Bool? = nil, completion: @escaping (_ data: AddOrDeleteRulesResponse?, _ error: Error?) -> Void)
```

Add/Delete rules

Add or delete rules from a user's active rule set. Users can provide unique, optionally tagged rules to add. Users can delete their entire rule set or a subset specified by rule ids or values.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let addOrDeleteRulesRequest = AddOrDeleteRulesRequest(add: [RuleNoId(value: "value_example", tag: "tag_example")], delete: DeleteRulesRequest_delete(ids: ["ids_example"], values: ["values_example"])) // AddOrDeleteRulesRequest | 
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
    open class func createTweet(inlineObject3: InlineObject3? = nil, completion: @escaping (_ data: TweetCreateResponse?, _ error: Error?) -> Void)
```

Creation of a Tweet

Causes the user to create a tweet under the authorized account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let inlineObject3 = inline_object_3(text: "text_example", directMessageDeepLink: "directMessageDeepLink_example", quoteTweetId: "quoteTweetId_example", forSuperFollowersOnly: false, reply: _2_tweets_reply(inReplyToTweetId: "inReplyToTweetId_example", excludeReplyUserIds: ["excludeReplyUserIds_example"]), media: _2_tweets_media(mediaIds: ["mediaIds_example"], taggedUserIds: ["taggedUserIds_example"]), poll: _2_tweets_poll(options: PollOption(position: 123, label: "label_example", votes: 123), durationMinutes: 123), replySettings: "replySettings_example", geo: _2_tweets_geo(placeId: "placeId_example")) // InlineObject3 |  (optional)

// Creation of a Tweet
TweetsAPI.createTweet(inlineObject3: inlineObject3) { (response, error) in
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
 **inlineObject3** | [**InlineObject3**](InlineObject3.md) |  | [optional] 

### Return type

[**TweetCreateResponse**](TweetCreateResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

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

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findTweetById**
```swift
    open class func findTweetById(id: String, expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, mediaFields: Set<String>? = nil, placeFields: Set<String>? = nil, pollFields: Set<String>? = nil, completion: @escaping (_ data: SingleTweetLookupResponse?, _ error: Error?) -> Void)
```

Tweet lookup by Tweet ID

Returns a variety of information about the Tweet specified by the requested ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | A single Tweet ID.
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)

// Tweet lookup by Tweet ID
TweetsAPI.findTweetById(id: id, expansions: expansions, tweetFields: tweetFields, userFields: userFields, mediaFields: mediaFields, placeFields: placeFields, pollFields: pollFields) { (response, error) in
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
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 

### Return type

[**SingleTweetLookupResponse**](SingleTweetLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findTweetsById**
```swift
    open class func findTweetsById(ids: [String], expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, mediaFields: Set<String>? = nil, placeFields: Set<String>? = nil, pollFields: Set<String>? = nil, completion: @escaping (_ data: MultiTweetLookupResponse?, _ error: Error?) -> Void)
```

Tweet lookup by Tweet IDs

Returns a variety of information about the Tweet specified by the requested ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ids = ["inner_example"] // [String] | A comma separated list of Tweet IDs. Up to 100 are allowed in a single request.
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)

// Tweet lookup by Tweet IDs
TweetsAPI.findTweetsById(ids: ids, expansions: expansions, tweetFields: tweetFields, userFields: userFields, mediaFields: mediaFields, placeFields: placeFields, pollFields: pollFields) { (response, error) in
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
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 

### Return type

[**MultiTweetLookupResponse**](MultiTweetLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRules**
```swift
    open class func getRules(ids: [String]? = nil, maxResults: Int? = nil, paginationToken: String? = nil, completion: @escaping (_ data: InlineResponse2001?, _ error: Error?) -> Void)
```

Rules lookup

Returns rules from a user's active rule set. Users can fetch all of their rules or a subset, specified by the provided rule ids.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let ids = ["inner_example"] // [String] | A comma-separated list of Rule IDs. (optional)
let maxResults = 987 // Int | The maximum number of results (optional) (default to 1000)
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
 **maxResults** | **Int** | The maximum number of results | [optional] [default to 1000]
 **paginationToken** | **String** | This value is populated by passing the &#39;next_token&#39; returned in a request to paginate through results. | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **hideReplyById**
```swift
    open class func hideReplyById(id: String, inlineObject4: InlineObject4? = nil, completion: @escaping (_ data: InlineResponse200?, _ error: Error?) -> Void)
```

Hide replies

Hides or unhides a reply to an owned conversation.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the reply that you want to hide or unhide.
let inlineObject4 = inline_object_4(hidden: false) // InlineObject4 |  (optional)

// Hide replies
TweetsAPI.hideReplyById(id: id, inlineObject4: inlineObject4) { (response, error) in
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
 **id** | **String** | The ID of the reply that you want to hide or unhide. | 
 **inlineObject4** | [**InlineObject4**](InlineObject4.md) |  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listsIdTweets**
```swift
    open class func listsIdTweets(id: String, maxResults: Int? = nil, paginationToken: String? = nil, expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, mediaFields: Set<String>? = nil, placeFields: Set<String>? = nil, pollFields: Set<String>? = nil, completion: @escaping (_ data: InlineResponse2002?, _ error: Error?) -> Void)
```

List Tweets timeline by List ID

Returns a list of Tweets associated with the provided List ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the List to list Tweets of
let maxResults = 987 // Int | The maximum number of results (optional) (default to 100)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)

// List Tweets timeline by List ID
TweetsAPI.listsIdTweets(id: id, maxResults: maxResults, paginationToken: paginationToken, expansions: expansions, tweetFields: tweetFields, userFields: userFields, mediaFields: mediaFields, placeFields: placeFields, pollFields: pollFields) { (response, error) in
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
 **id** | **String** | The ID of the List to list Tweets of | 
 **maxResults** | **Int** | The maximum number of results | [optional] [default to 100]
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sampleStream**
```swift
    open class func sampleStream(expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, mediaFields: Set<String>? = nil, placeFields: Set<String>? = nil, pollFields: Set<String>? = nil, backfillMinutes: Int? = nil, completion: @escaping (_ data: StreamingTweet?, _ error: Error?) -> Void)
```

Sample stream

Streams a deterministic 1% of public Tweets.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let backfillMinutes = 987 // Int | The number of minutes of backfill requested (optional)

// Sample stream
TweetsAPI.sampleStream(expansions: expansions, tweetFields: tweetFields, userFields: userFields, mediaFields: mediaFields, placeFields: placeFields, pollFields: pollFields, backfillMinutes: backfillMinutes) { (response, error) in
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
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **backfillMinutes** | **Int** | The number of minutes of backfill requested | [optional] 

### Return type

[**StreamingTweet**](StreamingTweet.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchStream**
```swift
    open class func searchStream(expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, mediaFields: Set<String>? = nil, placeFields: Set<String>? = nil, pollFields: Set<String>? = nil, backfillMinutes: Int? = nil, completion: @escaping (_ data: FilteredStreamingTweet?, _ error: Error?) -> Void)
```

Filtered stream

Streams Tweets matching the stream's active rule set.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)
let backfillMinutes = 987 // Int | The number of minutes of backfill requested (optional)

// Filtered stream
TweetsAPI.searchStream(expansions: expansions, tweetFields: tweetFields, userFields: userFields, mediaFields: mediaFields, placeFields: placeFields, pollFields: pollFields, backfillMinutes: backfillMinutes) { (response, error) in
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
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 
 **backfillMinutes** | **Int** | The number of minutes of backfill requested | [optional] 

### Return type

[**FilteredStreamingTweet**](FilteredStreamingTweet.md)

### Authorization

[BearerToken](../README.md#BearerToken)

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
TweetsAPI.spaceBuyers(id: id, userFields: userFields) { (response, error) in
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

# **tweetCountsFullArchiveSearch**
```swift
    open class func tweetCountsFullArchiveSearch(query: String, startTime: Date? = nil, endTime: Date? = nil, sinceId: String? = nil, untilId: String? = nil, nextToken: String? = nil, granularity: Granularity? = nil, completion: @escaping (_ data: TweetCountsResponse?, _ error: Error?) -> Void)
```

Full archive search counts

Returns Tweet Counts that match a search query.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = "query_example" // String | One query/rule/filter for matching Tweets. Up to 2048 characters.
let startTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). (optional)
let endTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). (optional)
let sinceId = "sinceId_example" // String | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. (optional)
let untilId = "untilId_example" // String | Returns results with a Tweet ID less than (that is, older than) the specified ID. (optional)
let nextToken = "nextToken_example" // String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (optional)
let granularity = Granularity() // Granularity | The granularity for the search counts results. (optional)

// Full archive search counts
TweetsAPI.tweetCountsFullArchiveSearch(query: query, startTime: startTime, endTime: endTime, sinceId: sinceId, untilId: untilId, nextToken: nextToken, granularity: granularity) { (response, error) in
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
 **query** | **String** | One query/rule/filter for matching Tweets. Up to 2048 characters. | 
 **startTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] 
 **endTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] 
 **sinceId** | **String** | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] 
 **untilId** | **String** | Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] 
 **nextToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **granularity** | [**Granularity**](.md) | The granularity for the search counts results. | [optional] 

### Return type

[**TweetCountsResponse**](TweetCountsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tweetCountsRecentSearch**
```swift
    open class func tweetCountsRecentSearch(query: String, startTime: Date? = nil, endTime: Date? = nil, sinceId: String? = nil, untilId: String? = nil, nextToken: String? = nil, granularity: Granularity? = nil, completion: @escaping (_ data: TweetCountsResponse?, _ error: Error?) -> Void)
```

Recent search counts

Returns Tweet Counts from the last 7 days that match a search query.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = "query_example" // String | One query/rule/filter for matching Tweets. Up to 2048 characters.
let startTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). (optional)
let endTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). (optional)
let sinceId = "sinceId_example" // String | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. (optional)
let untilId = "untilId_example" // String | Returns results with a Tweet ID less than (that is, older than) the specified ID. (optional)
let nextToken = "nextToken_example" // String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (optional)
let granularity = Granularity() // Granularity | The granularity for the search counts results. (optional)

// Recent search counts
TweetsAPI.tweetCountsRecentSearch(query: query, startTime: startTime, endTime: endTime, sinceId: sinceId, untilId: untilId, nextToken: nextToken, granularity: granularity) { (response, error) in
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
 **query** | **String** | One query/rule/filter for matching Tweets. Up to 2048 characters. | 
 **startTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] 
 **endTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] 
 **sinceId** | **String** | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] 
 **untilId** | **String** | Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] 
 **nextToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **granularity** | [**Granularity**](.md) | The granularity for the search counts results. | [optional] 

### Return type

[**TweetCountsResponse**](TweetCountsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tweetsFullarchiveSearch**
```swift
    open class func tweetsFullarchiveSearch(query: String, startTime: Date? = nil, endTime: Date? = nil, sinceId: String? = nil, untilId: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, mediaFields: Set<String>? = nil, placeFields: Set<String>? = nil, pollFields: Set<String>? = nil, completion: @escaping (_ data: TweetSearchResponse?, _ error: Error?) -> Void)
```

Full-archive search

Returns Tweets that match a search query.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = "query_example" // String | One query/rule/filter for matching Tweets. Up to 1024 characters.
let startTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). (optional)
let endTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). (optional)
let sinceId = "sinceId_example" // String | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. (optional)
let untilId = "untilId_example" // String | Returns results with a Tweet ID less than (that is, older than) the specified ID. (optional)
let maxResults = 987 // Int | The maximum number of search results to be returned by a request. (optional) (default to 10)
let nextToken = "nextToken_example" // String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)

// Full-archive search
TweetsAPI.tweetsFullarchiveSearch(query: query, startTime: startTime, endTime: endTime, sinceId: sinceId, untilId: untilId, maxResults: maxResults, nextToken: nextToken, expansions: expansions, tweetFields: tweetFields, userFields: userFields, mediaFields: mediaFields, placeFields: placeFields, pollFields: pollFields) { (response, error) in
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
 **query** | **String** | One query/rule/filter for matching Tweets. Up to 1024 characters. | 
 **startTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] 
 **endTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] 
 **sinceId** | **String** | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] 
 **untilId** | **String** | Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] 
 **maxResults** | **Int** | The maximum number of search results to be returned by a request. | [optional] [default to 10]
 **nextToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 

### Return type

[**TweetSearchResponse**](TweetSearchResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tweetsRecentSearch**
```swift
    open class func tweetsRecentSearch(query: String, startTime: Date? = nil, endTime: Date? = nil, sinceId: String? = nil, untilId: String? = nil, maxResults: Int? = nil, nextToken: String? = nil, expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, mediaFields: Set<String>? = nil, placeFields: Set<String>? = nil, pollFields: Set<String>? = nil, completion: @escaping (_ data: TweetSearchResponse?, _ error: Error?) -> Void)
```

Recent search

Returns Tweets from the last 7 days that match a search query.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let query = "query_example" // String | One query/rule/filter for matching Tweets. Up to 512 characters.
let startTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). (optional)
let endTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). (optional)
let sinceId = "sinceId_example" // String | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. (optional)
let untilId = "untilId_example" // String | Returns results with a Tweet ID less than (that is, older than) the specified ID. (optional)
let maxResults = 987 // Int | The maximum number of search results to be returned by a request. (optional) (default to 10)
let nextToken = "nextToken_example" // String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)

// Recent search
TweetsAPI.tweetsRecentSearch(query: query, startTime: startTime, endTime: endTime, sinceId: sinceId, untilId: untilId, maxResults: maxResults, nextToken: nextToken, expansions: expansions, tweetFields: tweetFields, userFields: userFields, mediaFields: mediaFields, placeFields: placeFields, pollFields: pollFields) { (response, error) in
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
 **query** | **String** | One query/rule/filter for matching Tweets. Up to 512 characters. | 
 **startTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] 
 **endTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] 
 **sinceId** | **String** | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] 
 **untilId** | **String** | Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] 
 **maxResults** | **Int** | The maximum number of search results to be returned by a request. | [optional] [default to 10]
 **nextToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 

### Return type

[**TweetSearchResponse**](TweetSearchResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdLike**
```swift
    open class func usersIdLike(id: String, usersLikesCreateRequest: UsersLikesCreateRequest? = nil, completion: @escaping (_ data: UsersLikesCreateResponse?, _ error: Error?) -> Void)
```

Causes the user (in the path) to like the specified tweet

Causes the user (in the path) to like the specified tweet. The user in the path must match the user context authorizing the request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the user that is requesting to like the tweet
let usersLikesCreateRequest = UsersLikesCreateRequest(tweetId: "tweetId_example") // UsersLikesCreateRequest |  (optional)

// Causes the user (in the path) to like the specified tweet
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
 **id** | **String** | The ID of the user that is requesting to like the tweet | 
 **usersLikesCreateRequest** | [**UsersLikesCreateRequest**](UsersLikesCreateRequest.md) |  | [optional] 

### Return type

[**UsersLikesCreateResponse**](UsersLikesCreateResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdLikedTweets**
```swift
    open class func usersIdLikedTweets(id: String, maxResults: Int? = nil, paginationToken: String? = nil, expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, mediaFields: Set<String>? = nil, placeFields: Set<String>? = nil, pollFields: Set<String>? = nil, completion: @escaping (_ data: InlineResponse2002?, _ error: Error?) -> Void)
```

Returns Tweet objects liked by the provided User ID

Returns a list of Tweets liked by the provided User ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the User to list the liked Tweets of
let maxResults = 987 // Int | The maximum number of results (optional)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)

// Returns Tweet objects liked by the provided User ID
TweetsAPI.usersIdLikedTweets(id: id, maxResults: maxResults, paginationToken: paginationToken, expansions: expansions, tweetFields: tweetFields, userFields: userFields, mediaFields: mediaFields, placeFields: placeFields, pollFields: pollFields) { (response, error) in
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
 **id** | **String** | The ID of the User to list the liked Tweets of | 
 **maxResults** | **Int** | The maximum number of results | [optional] 
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdMentions**
```swift
    open class func usersIdMentions(id: String, sinceId: String? = nil, untilId: String? = nil, maxResults: Int? = nil, paginationToken: String? = nil, startTime: Date? = nil, endTime: Date? = nil, expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, mediaFields: Set<String>? = nil, placeFields: Set<String>? = nil, pollFields: Set<String>? = nil, completion: @escaping (_ data: GenericTweetsTimelineResponse?, _ error: Error?) -> Void)
```

User mention timeline by User ID

Returns Tweet objects that mention username associated to the provided User ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the User to list mentions of
let sinceId = "sinceId_example" // String | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. (optional)
let untilId = "untilId_example" // String | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. (optional)
let maxResults = 987 // Int | The maximum number of results (optional)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. (optional)
let startTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. (optional)
let endTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)

// User mention timeline by User ID
TweetsAPI.usersIdMentions(id: id, sinceId: sinceId, untilId: untilId, maxResults: maxResults, paginationToken: paginationToken, startTime: startTime, endTime: endTime, expansions: expansions, tweetFields: tweetFields, userFields: userFields, mediaFields: mediaFields, placeFields: placeFields, pollFields: pollFields) { (response, error) in
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
 **id** | **String** | The ID of the User to list mentions of | 
 **sinceId** | **String** | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. | [optional] 
 **untilId** | **String** | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. | [optional] 
 **maxResults** | **Int** | The maximum number of results | [optional] 
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **startTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. | [optional] 
 **endTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 

### Return type

[**GenericTweetsTimelineResponse**](GenericTweetsTimelineResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdRetweets**
```swift
    open class func usersIdRetweets(id: String, usersRetweetsCreateRequest: UsersRetweetsCreateRequest? = nil, completion: @escaping (_ data: UsersRetweetsCreateResponse?, _ error: Error?) -> Void)
```

Causes the user (in the path) to retweet the specified tweet

Causes the user (in the path) to retweet the specified tweet. The user in the path must match the user context authorizing the request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the user that is requesting to retweet the tweet
let usersRetweetsCreateRequest = UsersRetweetsCreateRequest(tweetId: "tweetId_example") // UsersRetweetsCreateRequest |  (optional)

// Causes the user (in the path) to retweet the specified tweet
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
 **id** | **String** | The ID of the user that is requesting to retweet the tweet | 
 **usersRetweetsCreateRequest** | [**UsersRetweetsCreateRequest**](UsersRetweetsCreateRequest.md) |  | [optional] 

### Return type

[**UsersRetweetsCreateResponse**](UsersRetweetsCreateResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdTweets**
```swift
    open class func usersIdTweets(id: String, sinceId: String? = nil, untilId: String? = nil, maxResults: Int? = nil, exclude: Set<String>? = nil, paginationToken: String? = nil, startTime: Date? = nil, endTime: Date? = nil, expansions: Set<String>? = nil, tweetFields: Set<String>? = nil, userFields: Set<String>? = nil, mediaFields: Set<String>? = nil, placeFields: Set<String>? = nil, pollFields: Set<String>? = nil, completion: @escaping (_ data: GenericTweetsTimelineResponse?, _ error: Error?) -> Void)
```

User Tweets timeline by User ID

Returns a list of Tweets authored by the provided User ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the User to list Tweets of
let sinceId = "sinceId_example" // String | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. (optional)
let untilId = "untilId_example" // String | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. (optional)
let maxResults = 987 // Int | The maximum number of results (optional)
let exclude = ["exclude_example"] // Set<String> | The set of entities to exclude (e.g. 'replies' or 'retweets') (optional)
let paginationToken = "paginationToken_example" // String | This parameter is used to get the next 'page' of results. (optional)
let startTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. (optional)
let endTime = Date() // Date | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. (optional)
let expansions = ["expansions_example"] // Set<String> | A comma separated list of fields to expand. (optional)
let tweetFields = ["tweetFields_example"] // Set<String> | A comma separated list of Tweet fields to display. (optional)
let userFields = ["userFields_example"] // Set<String> | A comma separated list of User fields to display. (optional)
let mediaFields = ["mediaFields_example"] // Set<String> | A comma separated list of Media fields to display. (optional)
let placeFields = ["placeFields_example"] // Set<String> | A comma separated list of Place fields to display. (optional)
let pollFields = ["pollFields_example"] // Set<String> | A comma separated list of Poll fields to display. (optional)

// User Tweets timeline by User ID
TweetsAPI.usersIdTweets(id: id, sinceId: sinceId, untilId: untilId, maxResults: maxResults, exclude: exclude, paginationToken: paginationToken, startTime: startTime, endTime: endTime, expansions: expansions, tweetFields: tweetFields, userFields: userFields, mediaFields: mediaFields, placeFields: placeFields, pollFields: pollFields) { (response, error) in
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
 **id** | **String** | The ID of the User to list Tweets of | 
 **sinceId** | **String** | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. | [optional] 
 **untilId** | **String** | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. | [optional] 
 **maxResults** | **Int** | The maximum number of results | [optional] 
 **exclude** | [**Set&lt;String&gt;**](String.md) | The set of entities to exclude (e.g. &#39;replies&#39; or &#39;retweets&#39;) | [optional] 
 **paginationToken** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] 
 **startTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. | [optional] 
 **endTime** | **Date** | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. | [optional] 
 **expansions** | [**Set&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] 
 **tweetFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] 
 **userFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] 
 **mediaFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] 
 **placeFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] 
 **pollFields** | [**Set&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] 

### Return type

[**GenericTweetsTimelineResponse**](GenericTweetsTimelineResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdUnlike**
```swift
    open class func usersIdUnlike(id: String, tweetId: String, completion: @escaping (_ data: UsersLikesDeleteResponse?, _ error: Error?) -> Void)
```

Causes the user (in the path) to unlike the specified tweet

Causes the user (in the path) to unlike the specified tweet. The user must match the user context authorizing the request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the user that is requesting to unlike the tweet
let tweetId = "tweetId_example" // String | The ID of the tweet that the user is requesting to unlike

// Causes the user (in the path) to unlike the specified tweet
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
 **id** | **String** | The ID of the user that is requesting to unlike the tweet | 
 **tweetId** | **String** | The ID of the tweet that the user is requesting to unlike | 

### Return type

[**UsersLikesDeleteResponse**](UsersLikesDeleteResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdUnretweets**
```swift
    open class func usersIdUnretweets(id: String, sourceTweetId: String, completion: @escaping (_ data: UsersRetweetsDeleteResponse?, _ error: Error?) -> Void)
```

Causes the user (in the path) to unretweet the specified tweet

Causes the user (in the path) to unretweet the specified tweet. The user must match the user context authorizing the request

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the user that is requesting to unretweet the tweet
let sourceTweetId = "sourceTweetId_example" // String | The ID of the tweet that the user is requesting to unretweet

// Causes the user (in the path) to unretweet the specified tweet
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
 **id** | **String** | The ID of the user that is requesting to unretweet the tweet | 
 **sourceTweetId** | **String** | The ID of the tweet that the user is requesting to unretweet | 

### Return type

[**UsersRetweetsDeleteResponse**](UsersRetweetsDeleteResponse.md)

### Authorization

[UserToken](../README.md#UserToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/problem+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

