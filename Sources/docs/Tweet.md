# Tweet

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachments** | [**TweetAttachments**](TweetAttachments.md) |  | [optional] 
**authorId** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] 
**contextAnnotations** | [ContextAnnotation] |  | [optional] 
**conversationId** | **String** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] 
**createdAt** | **Date** | Creation time of the Tweet. | [optional] 
**entities** | [**FullTextEntities**](FullTextEntities.md) |  | [optional] 
**geo** | [**TweetGeo**](TweetGeo.md) |  | [optional] 
**id** | **String** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | 
**inReplyToUserId** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] 
**lang** | **String** | Language of the Tweet, if detected by Twitter. Returned as a BCP47 language tag. | [optional] 
**nonPublicMetrics** | [**TweetNonPublicMetrics**](TweetNonPublicMetrics.md) |  | [optional] 
**organicMetrics** | [**TweetOrganicMetrics**](TweetOrganicMetrics.md) |  | [optional] 
**possiblySensitive** | **Bool** | Indicates if this Tweet contains URLs marked as sensitive, for example content suitable for mature audiences. | [optional] 
**promotedMetrics** | [**TweetPromotedMetrics**](TweetPromotedMetrics.md) |  | [optional] 
**publicMetrics** | [**TweetPublicMetrics**](TweetPublicMetrics.md) |  | [optional] 
**referencedTweets** | [TweetReferencedTweetsInner] | A list of Tweets this Tweet refers to. For example, if the parent Tweet is a Retweet, a Quoted Tweet or a Reply, it will include the related Tweet referenced to by its parent. | [optional] 
**replySettings** | [**ReplySettings**](ReplySettings.md) |  | [optional] 
**source** | **String** | The name of the app the user Tweeted from. | [optional] 
**text** | **String** | The content of the Tweet. | 
**withheld** | [**TweetWithheld**](TweetWithheld.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


