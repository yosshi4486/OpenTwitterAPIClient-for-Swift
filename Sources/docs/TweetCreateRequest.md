# TweetCreateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**directMessageDeepLink** | **String** | Link to take the conversation from the public timeline to a private Direct Message. | [optional] 
**forSuperFollowersOnly** | **Bool** | Exclusive Tweet for super followers. | [optional] [default to false]
**geo** | [**TweetCreateRequestGeo**](TweetCreateRequestGeo.md) |  | [optional] 
**media** | [**TweetCreateRequestMedia**](TweetCreateRequestMedia.md) |  | [optional] 
**poll** | [**TweetCreateRequestPoll**](TweetCreateRequestPoll.md) |  | [optional] 
**quoteTweetId** | **String** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] 
**reply** | [**TweetCreateRequestReply**](TweetCreateRequestReply.md) |  | [optional] 
**replySettings** | **String** | Settings to indicate who can reply to the Tweet. | [optional] 
**text** | **String** | The content of the Tweet. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


