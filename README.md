# Swift5 API client for OpenAPIClient

Twitter API v2 available endpoints

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 2.30
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen
For more information, please visit [https://developer.twitter.com/](https://developer.twitter.com/)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://api.twitter.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ComplianceAPI* | [**createBatchComplianceJob**](docs/ComplianceAPI.md#createbatchcompliancejob) | **POST** /2/compliance/jobs | Create compliance job
*ComplianceAPI* | [**getBatchComplianceJob**](docs/ComplianceAPI.md#getbatchcompliancejob) | **GET** /2/compliance/jobs/{id} | Get compliance job
*ComplianceAPI* | [**listBatchComplianceJobs**](docs/ComplianceAPI.md#listbatchcompliancejobs) | **GET** /2/compliance/jobs | List compliance jobs
*GeneralAPI* | [**getOpenApiSpec**](docs/GeneralAPI.md#getopenapispec) | **GET** /2/openapi.json | Returns the open api spec document.
*ListsAPI* | [**getUserListMemberships**](docs/ListsAPI.md#getuserlistmemberships) | **GET** /2/users/{id}/list_memberships | Get a User&#39;s List Memberships
*ListsAPI* | [**listAddMember**](docs/ListsAPI.md#listaddmember) | **POST** /2/lists/{id}/members | Add a List member
*ListsAPI* | [**listIdCreate**](docs/ListsAPI.md#listidcreate) | **POST** /2/lists | Create List
*ListsAPI* | [**listIdDelete**](docs/ListsAPI.md#listiddelete) | **DELETE** /2/lists/{id} | Delete List
*ListsAPI* | [**listIdGet**](docs/ListsAPI.md#listidget) | **GET** /2/lists/{id} | List lookup by List ID
*ListsAPI* | [**listIdUpdate**](docs/ListsAPI.md#listidupdate) | **PUT** /2/lists/{id} | Update List
*ListsAPI* | [**listRemoveMember**](docs/ListsAPI.md#listremovemember) | **DELETE** /2/lists/{id}/members/{user_id} | Remove a List member
*ListsAPI* | [**listUserFollow**](docs/ListsAPI.md#listuserfollow) | **POST** /2/users/{id}/followed_lists | Follow a List
*ListsAPI* | [**listUserOwnedLists**](docs/ListsAPI.md#listuserownedlists) | **GET** /2/users/{id}/owned_lists | Get a User&#39;s Owned Lists
*ListsAPI* | [**listUserPin**](docs/ListsAPI.md#listuserpin) | **POST** /2/users/{id}/pinned_lists | Pin a List
*ListsAPI* | [**listUserPinnedLists**](docs/ListsAPI.md#listuserpinnedlists) | **GET** /2/users/{id}/pinned_lists | Get a User&#39;s Pinned Lists
*ListsAPI* | [**listUserUnfollow**](docs/ListsAPI.md#listuserunfollow) | **DELETE** /2/users/{id}/followed_lists/{list_id} | Unfollow a List
*ListsAPI* | [**listUserUnpin**](docs/ListsAPI.md#listuserunpin) | **DELETE** /2/users/{id}/pinned_lists/{list_id} | Unpin a List
*ListsAPI* | [**userFollowedLists**](docs/ListsAPI.md#userfollowedlists) | **GET** /2/users/{id}/followed_lists | Get User&#39;s Followed Lists
*SpacesAPI* | [**findSpaceById**](docs/SpacesAPI.md#findspacebyid) | **GET** /2/spaces/{id} | Space lookup by Space ID
*SpacesAPI* | [**findSpacesByCreatorIds**](docs/SpacesAPI.md#findspacesbycreatorids) | **GET** /2/spaces/by/creator_ids | Space lookup by their creators
*SpacesAPI* | [**findSpacesByIds**](docs/SpacesAPI.md#findspacesbyids) | **GET** /2/spaces | Space lookup up Space IDs
*SpacesAPI* | [**searchSpaces**](docs/SpacesAPI.md#searchspaces) | **GET** /2/spaces/search | Search for Spaces
*SpacesAPI* | [**spaceBuyers**](docs/SpacesAPI.md#spacebuyers) | **GET** /2/spaces/{id}/buyers | Retrieve the list of users who purchased a ticket to the given space
*TweetsAPI* | [**addOrDeleteRules**](docs/TweetsAPI.md#addordeleterules) | **POST** /2/tweets/search/stream/rules | Add/Delete rules
*TweetsAPI* | [**createTweet**](docs/TweetsAPI.md#createtweet) | **POST** /2/tweets | Creation of a Tweet
*TweetsAPI* | [**deleteTweetById**](docs/TweetsAPI.md#deletetweetbyid) | **DELETE** /2/tweets/{id} | Tweet delete by Tweet ID
*TweetsAPI* | [**findTweetById**](docs/TweetsAPI.md#findtweetbyid) | **GET** /2/tweets/{id} | Tweet lookup by Tweet ID
*TweetsAPI* | [**findTweetsById**](docs/TweetsAPI.md#findtweetsbyid) | **GET** /2/tweets | Tweet lookup by Tweet IDs
*TweetsAPI* | [**getRules**](docs/TweetsAPI.md#getrules) | **GET** /2/tweets/search/stream/rules | Rules lookup
*TweetsAPI* | [**hideReplyById**](docs/TweetsAPI.md#hidereplybyid) | **PUT** /2/tweets/{id}/hidden | Hide replies
*TweetsAPI* | [**listsIdTweets**](docs/TweetsAPI.md#listsidtweets) | **GET** /2/lists/{id}/tweets | List Tweets timeline by List ID
*TweetsAPI* | [**sampleStream**](docs/TweetsAPI.md#samplestream) | **GET** /2/tweets/sample/stream | Sample stream
*TweetsAPI* | [**searchStream**](docs/TweetsAPI.md#searchstream) | **GET** /2/tweets/search/stream | Filtered stream
*TweetsAPI* | [**spaceBuyers**](docs/TweetsAPI.md#spacebuyers) | **GET** /2/spaces/{id}/buyers | Retrieve the list of users who purchased a ticket to the given space
*TweetsAPI* | [**tweetCountsFullArchiveSearch**](docs/TweetsAPI.md#tweetcountsfullarchivesearch) | **GET** /2/tweets/counts/all | Full archive search counts
*TweetsAPI* | [**tweetCountsRecentSearch**](docs/TweetsAPI.md#tweetcountsrecentsearch) | **GET** /2/tweets/counts/recent | Recent search counts
*TweetsAPI* | [**tweetsFullarchiveSearch**](docs/TweetsAPI.md#tweetsfullarchivesearch) | **GET** /2/tweets/search/all | Full-archive search
*TweetsAPI* | [**tweetsRecentSearch**](docs/TweetsAPI.md#tweetsrecentsearch) | **GET** /2/tweets/search/recent | Recent search
*TweetsAPI* | [**usersIdLike**](docs/TweetsAPI.md#usersidlike) | **POST** /2/users/{id}/likes | Causes the user (in the path) to like the specified tweet
*TweetsAPI* | [**usersIdLikedTweets**](docs/TweetsAPI.md#usersidlikedtweets) | **GET** /2/users/{id}/liked_tweets | Returns Tweet objects liked by the provided User ID
*TweetsAPI* | [**usersIdMentions**](docs/TweetsAPI.md#usersidmentions) | **GET** /2/users/{id}/mentions | User mention timeline by User ID
*TweetsAPI* | [**usersIdRetweets**](docs/TweetsAPI.md#usersidretweets) | **POST** /2/users/{id}/retweets | Causes the user (in the path) to retweet the specified tweet
*TweetsAPI* | [**usersIdTweets**](docs/TweetsAPI.md#usersidtweets) | **GET** /2/users/{id}/tweets | User Tweets timeline by User ID
*TweetsAPI* | [**usersIdUnlike**](docs/TweetsAPI.md#usersidunlike) | **DELETE** /2/users/{id}/likes/{tweet_id} | Causes the user (in the path) to unlike the specified tweet
*TweetsAPI* | [**usersIdUnretweets**](docs/TweetsAPI.md#usersidunretweets) | **DELETE** /2/users/{id}/retweets/{source_tweet_id} | Causes the user (in the path) to unretweet the specified tweet
*UsersAPI* | [**findUserById**](docs/UsersAPI.md#finduserbyid) | **GET** /2/users/{id} | User lookup by ID
*UsersAPI* | [**findUserByUsername**](docs/UsersAPI.md#finduserbyusername) | **GET** /2/users/by/username/{username} | User lookup by username
*UsersAPI* | [**findUsersById**](docs/UsersAPI.md#findusersbyid) | **GET** /2/users | User lookup by IDs
*UsersAPI* | [**findUsersByUsername**](docs/UsersAPI.md#findusersbyusername) | **GET** /2/users/by | User lookup by usernames
*UsersAPI* | [**listGetFollowers**](docs/UsersAPI.md#listgetfollowers) | **GET** /2/lists/{id}/followers | Returns user objects that follow a List by the provided List ID
*UsersAPI* | [**listGetMembers**](docs/UsersAPI.md#listgetmembers) | **GET** /2/lists/{id}/members | Returns user objects that are members of a List by the provided List ID
*UsersAPI* | [**tweetsIdLikingUsers**](docs/UsersAPI.md#tweetsidlikingusers) | **GET** /2/tweets/{id}/liking_users | Returns user objects that have liked the provided Tweet ID
*UsersAPI* | [**tweetsIdRetweetingUsers**](docs/UsersAPI.md#tweetsidretweetingusers) | **GET** /2/tweets/{id}/retweeted_by | Returns user objects that have retweeted the provided Tweet ID
*UsersAPI* | [**usersIdBlock**](docs/UsersAPI.md#usersidblock) | **POST** /2/users/{id}/blocking | Block User by User ID
*UsersAPI* | [**usersIdBlocking**](docs/UsersAPI.md#usersidblocking) | **GET** /2/users/{id}/blocking | Returns user objects that are blocked by provided user ID
*UsersAPI* | [**usersIdFollow**](docs/UsersAPI.md#usersidfollow) | **POST** /2/users/{id}/following | Follow User
*UsersAPI* | [**usersIdFollowers**](docs/UsersAPI.md#usersidfollowers) | **GET** /2/users/{id}/followers | Returns user objects that follow the provided user ID
*UsersAPI* | [**usersIdFollowing**](docs/UsersAPI.md#usersidfollowing) | **GET** /2/users/{id}/following | Following by User ID
*UsersAPI* | [**usersIdMute**](docs/UsersAPI.md#usersidmute) | **POST** /2/users/{id}/muting | Mute User by User ID
*UsersAPI* | [**usersIdMuting**](docs/UsersAPI.md#usersidmuting) | **GET** /2/users/{id}/muting | Returns user objects that are muted by the provided user ID
*UsersAPI* | [**usersIdUnblock**](docs/UsersAPI.md#usersidunblock) | **DELETE** /2/users/{source_user_id}/blocking/{target_user_id} | Unblock User by User ID
*UsersAPI* | [**usersIdUnfollow**](docs/UsersAPI.md#usersidunfollow) | **DELETE** /2/users/{source_user_id}/following/{target_user_id} | Unfollow User
*UsersAPI* | [**usersIdUnmute**](docs/UsersAPI.md#usersidunmute) | **DELETE** /2/users/{source_user_id}/muting/{target_user_id} | Unmute User by User ID


## Documentation For Models

 - [AddOrDeleteRulesRequest](docs/AddOrDeleteRulesRequest.md)
 - [AddOrDeleteRulesResponse](docs/AddOrDeleteRulesResponse.md)
 - [AddRulesRequest](docs/AddRulesRequest.md)
 - [AddRulesResponse](docs/AddRulesResponse.md)
 - [AnimatedGif](docs/AnimatedGif.md)
 - [AnimatedGifAllOf](docs/AnimatedGifAllOf.md)
 - [CashtagEntity](docs/CashtagEntity.md)
 - [CashtagFields](docs/CashtagFields.md)
 - [ClientDisconnectedProblem](docs/ClientDisconnectedProblem.md)
 - [ClientDisconnectedProblemAllOf](docs/ClientDisconnectedProblemAllOf.md)
 - [ClientForbiddenProblem](docs/ClientForbiddenProblem.md)
 - [ClientForbiddenProblemAllOf](docs/ClientForbiddenProblemAllOf.md)
 - [CommonMediaFields](docs/CommonMediaFields.md)
 - [ComplianceJob](docs/ComplianceJob.md)
 - [ComplianceJobStatus](docs/ComplianceJobStatus.md)
 - [ComplianceJobType](docs/ComplianceJobType.md)
 - [ConflictProblem](docs/ConflictProblem.md)
 - [ConflictProblemAllOf](docs/ConflictProblemAllOf.md)
 - [ConnectionExceptionProblem](docs/ConnectionExceptionProblem.md)
 - [ConnectionExceptionProblemAllOf](docs/ConnectionExceptionProblemAllOf.md)
 - [ContextAnnotation](docs/ContextAnnotation.md)
 - [ContextAnnotationDomainFields](docs/ContextAnnotationDomainFields.md)
 - [ContextAnnotationEntityFields](docs/ContextAnnotationEntityFields.md)
 - [DeleteRulesRequest](docs/DeleteRulesRequest.md)
 - [DeleteRulesRequestDelete](docs/DeleteRulesRequestDelete.md)
 - [DeleteRulesResponse](docs/DeleteRulesResponse.md)
 - [DisallowedResourceProblem](docs/DisallowedResourceProblem.md)
 - [DisallowedResourceProblemAllOf](docs/DisallowedResourceProblemAllOf.md)
 - [DuplicateRuleProblem](docs/DuplicateRuleProblem.md)
 - [DuplicateRuleProblemAllOf](docs/DuplicateRuleProblemAllOf.md)
 - [EntityIndicesInclusiveExclusive](docs/EntityIndicesInclusiveExclusive.md)
 - [EntityIndicesInclusiveInclusive](docs/EntityIndicesInclusiveInclusive.md)
 - [Expansions](docs/Expansions.md)
 - [FieldUnauthorizedProblem](docs/FieldUnauthorizedProblem.md)
 - [FieldUnauthorizedProblemAllOf](docs/FieldUnauthorizedProblemAllOf.md)
 - [FilteredStreamingTweet](docs/FilteredStreamingTweet.md)
 - [FilteredStreamingTweetOneOf](docs/FilteredStreamingTweetOneOf.md)
 - [FilteredStreamingTweetOneOfMatchingRules](docs/FilteredStreamingTweetOneOfMatchingRules.md)
 - [FullTextEntities](docs/FullTextEntities.md)
 - [GenericMultipleUsersLookupResponse](docs/GenericMultipleUsersLookupResponse.md)
 - [GenericMultipleUsersLookupResponseMeta](docs/GenericMultipleUsersLookupResponseMeta.md)
 - [GenericProblem](docs/GenericProblem.md)
 - [GenericProblemAllOf](docs/GenericProblemAllOf.md)
 - [GenericTweetsTimelineResponse](docs/GenericTweetsTimelineResponse.md)
 - [GenericTweetsTimelineResponseMeta](docs/GenericTweetsTimelineResponseMeta.md)
 - [Geo](docs/Geo.md)
 - [Granularity](docs/Granularity.md)
 - [HashtagEntity](docs/HashtagEntity.md)
 - [HashtagFields](docs/HashtagFields.md)
 - [InlineObject](docs/InlineObject.md)
 - [InlineObject1](docs/InlineObject1.md)
 - [InlineObject2](docs/InlineObject2.md)
 - [InlineObject3](docs/InlineObject3.md)
 - [InlineObject4](docs/InlineObject4.md)
 - [InlineObject5](docs/InlineObject5.md)
 - [InlineResponse200](docs/InlineResponse200.md)
 - [InlineResponse2001](docs/InlineResponse2001.md)
 - [InlineResponse2002](docs/InlineResponse2002.md)
 - [InlineResponse2002Meta](docs/InlineResponse2002Meta.md)
 - [InvalidRequestProblem](docs/InvalidRequestProblem.md)
 - [InvalidRequestProblemAllOf](docs/InvalidRequestProblemAllOf.md)
 - [InvalidRequestProblemAllOfErrors](docs/InvalidRequestProblemAllOfErrors.md)
 - [InvalidRuleProblem](docs/InvalidRuleProblem.md)
 - [InvalidRuleProblemAllOf](docs/InvalidRuleProblemAllOf.md)
 - [List](docs/List.md)
 - [ListAddMemberRequest](docs/ListAddMemberRequest.md)
 - [ListCreateRequest](docs/ListCreateRequest.md)
 - [ListCreateResponse](docs/ListCreateResponse.md)
 - [ListDeleteResponse](docs/ListDeleteResponse.md)
 - [ListDeleteResponseData](docs/ListDeleteResponseData.md)
 - [ListFollowRequest](docs/ListFollowRequest.md)
 - [ListFollowedResponse](docs/ListFollowedResponse.md)
 - [ListFollowedResponseData](docs/ListFollowedResponseData.md)
 - [ListLookupMultipleUsersLookupResponse](docs/ListLookupMultipleUsersLookupResponse.md)
 - [ListLookupMultipleUsersLookupResponseMeta](docs/ListLookupMultipleUsersLookupResponseMeta.md)
 - [ListMemberResponse](docs/ListMemberResponse.md)
 - [ListMemberResponseData](docs/ListMemberResponseData.md)
 - [ListPinRequest](docs/ListPinRequest.md)
 - [ListPinnedResponse](docs/ListPinnedResponse.md)
 - [ListPinnedResponseData](docs/ListPinnedResponseData.md)
 - [ListUpdateRequest](docs/ListUpdateRequest.md)
 - [ListUpdateResponse](docs/ListUpdateResponse.md)
 - [ListUpdateResponseData](docs/ListUpdateResponseData.md)
 - [Media](docs/Media.md)
 - [MentionEntity](docs/MentionEntity.md)
 - [MentionFields](docs/MentionFields.md)
 - [Model2TweetsGeo](docs/Model2TweetsGeo.md)
 - [Model2TweetsMedia](docs/Model2TweetsMedia.md)
 - [Model2TweetsPoll](docs/Model2TweetsPoll.md)
 - [Model2TweetsReply](docs/Model2TweetsReply.md)
 - [ModelError](docs/ModelError.md)
 - [MultiComplianceJobResponse](docs/MultiComplianceJobResponse.md)
 - [MultiListNoPaginationResponse](docs/MultiListNoPaginationResponse.md)
 - [MultiListNoPaginationResponseMeta](docs/MultiListNoPaginationResponseMeta.md)
 - [MultiListResponse](docs/MultiListResponse.md)
 - [MultiListResponseMeta](docs/MultiListResponseMeta.md)
 - [MultiSpaceLookupResponse](docs/MultiSpaceLookupResponse.md)
 - [MultiTweetLookupResponse](docs/MultiTweetLookupResponse.md)
 - [MultiUserLookupResponse](docs/MultiUserLookupResponse.md)
 - [NonCompliantRulesProblem](docs/NonCompliantRulesProblem.md)
 - [NonCompliantRulesProblemAllOf](docs/NonCompliantRulesProblemAllOf.md)
 - [OperationalDisconnectProblem](docs/OperationalDisconnectProblem.md)
 - [OperationalDisconnectProblemAllOf](docs/OperationalDisconnectProblemAllOf.md)
 - [Photo](docs/Photo.md)
 - [PhotoAllOf](docs/PhotoAllOf.md)
 - [Place](docs/Place.md)
 - [PlaceType](docs/PlaceType.md)
 - [Point](docs/Point.md)
 - [Poll](docs/Poll.md)
 - [PollOption](docs/PollOption.md)
 - [Problem](docs/Problem.md)
 - [ProblemFields](docs/ProblemFields.md)
 - [ReplySettings](docs/ReplySettings.md)
 - [ResourceNotFoundProblem](docs/ResourceNotFoundProblem.md)
 - [ResourceNotFoundProblemAllOf](docs/ResourceNotFoundProblemAllOf.md)
 - [ResourceUnauthorizedProblem](docs/ResourceUnauthorizedProblem.md)
 - [ResourceUnauthorizedProblemAllOf](docs/ResourceUnauthorizedProblemAllOf.md)
 - [ResourceUnavailableProblem](docs/ResourceUnavailableProblem.md)
 - [ResourceUnavailableProblemAllOf](docs/ResourceUnavailableProblemAllOf.md)
 - [Rule](docs/Rule.md)
 - [RuleNoId](docs/RuleNoId.md)
 - [RulesCapProblem](docs/RulesCapProblem.md)
 - [RulesCapProblemAllOf](docs/RulesCapProblemAllOf.md)
 - [RulesRequestSummary](docs/RulesRequestSummary.md)
 - [RulesRequestSummaryOneOf](docs/RulesRequestSummaryOneOf.md)
 - [RulesRequestSummaryOneOf1](docs/RulesRequestSummaryOneOf1.md)
 - [RulesResponseMetadata](docs/RulesResponseMetadata.md)
 - [SearchCount](docs/SearchCount.md)
 - [SingleComplianceJobResponse](docs/SingleComplianceJobResponse.md)
 - [SingleListLookupResponse](docs/SingleListLookupResponse.md)
 - [SingleSpaceLookupResponse](docs/SingleSpaceLookupResponse.md)
 - [SingleTweetLookupResponse](docs/SingleTweetLookupResponse.md)
 - [SingleUserLookupResponse](docs/SingleUserLookupResponse.md)
 - [Space](docs/Space.md)
 - [SpaceTopics](docs/SpaceTopics.md)
 - [StreamingTweet](docs/StreamingTweet.md)
 - [StreamingTweetOneOf](docs/StreamingTweetOneOf.md)
 - [Tweet](docs/Tweet.md)
 - [TweetAttachments](docs/TweetAttachments.md)
 - [TweetCountsResponse](docs/TweetCountsResponse.md)
 - [TweetCountsResponseMeta](docs/TweetCountsResponseMeta.md)
 - [TweetCreateResponse](docs/TweetCreateResponse.md)
 - [TweetCreateResponseData](docs/TweetCreateResponseData.md)
 - [TweetDeleteResponse](docs/TweetDeleteResponse.md)
 - [TweetDeleteResponseData](docs/TweetDeleteResponseData.md)
 - [TweetGeo](docs/TweetGeo.md)
 - [TweetNonPublicMetrics](docs/TweetNonPublicMetrics.md)
 - [TweetOrganicMetrics](docs/TweetOrganicMetrics.md)
 - [TweetPromotedMetrics](docs/TweetPromotedMetrics.md)
 - [TweetPublicMetrics](docs/TweetPublicMetrics.md)
 - [TweetReferencedTweets](docs/TweetReferencedTweets.md)
 - [TweetSearchResponse](docs/TweetSearchResponse.md)
 - [TweetSearchResponseMeta](docs/TweetSearchResponseMeta.md)
 - [TweetWithheld](docs/TweetWithheld.md)
 - [URLFields](docs/URLFields.md)
 - [URLImage](docs/URLImage.md)
 - [UnsupportedAuthenticationProblem](docs/UnsupportedAuthenticationProblem.md)
 - [UnsupportedAuthenticationProblemAllOf](docs/UnsupportedAuthenticationProblemAllOf.md)
 - [UrlEntity](docs/UrlEntity.md)
 - [UsageCapExceededProblem](docs/UsageCapExceededProblem.md)
 - [UsageCapExceededProblemAllOf](docs/UsageCapExceededProblemAllOf.md)
 - [User](docs/User.md)
 - [UserEntities](docs/UserEntities.md)
 - [UserEntitiesUrl](docs/UserEntitiesUrl.md)
 - [UserPublicMetrics](docs/UserPublicMetrics.md)
 - [UserWithheld](docs/UserWithheld.md)
 - [UsersBlockingMutationResponse](docs/UsersBlockingMutationResponse.md)
 - [UsersBlockingMutationResponseData](docs/UsersBlockingMutationResponseData.md)
 - [UsersFollowingCreateResponse](docs/UsersFollowingCreateResponse.md)
 - [UsersFollowingCreateResponseData](docs/UsersFollowingCreateResponseData.md)
 - [UsersFollowingDeleteResponse](docs/UsersFollowingDeleteResponse.md)
 - [UsersFollowingLookupResponse](docs/UsersFollowingLookupResponse.md)
 - [UsersLikesCreateRequest](docs/UsersLikesCreateRequest.md)
 - [UsersLikesCreateResponse](docs/UsersLikesCreateResponse.md)
 - [UsersLikesCreateResponseData](docs/UsersLikesCreateResponseData.md)
 - [UsersLikesDeleteResponse](docs/UsersLikesDeleteResponse.md)
 - [UsersMutingMutationResponse](docs/UsersMutingMutationResponse.md)
 - [UsersMutingMutationResponseData](docs/UsersMutingMutationResponseData.md)
 - [UsersRetweetsCreateRequest](docs/UsersRetweetsCreateRequest.md)
 - [UsersRetweetsCreateResponse](docs/UsersRetweetsCreateResponse.md)
 - [UsersRetweetsCreateResponseData](docs/UsersRetweetsCreateResponseData.md)
 - [UsersRetweetsDeleteResponse](docs/UsersRetweetsDeleteResponse.md)
 - [Video](docs/Video.md)
 - [VideoAllOf](docs/VideoAllOf.md)
 - [VideoAllOfNonPublicMetrics](docs/VideoAllOfNonPublicMetrics.md)
 - [VideoAllOfOrganicMetrics](docs/VideoAllOfOrganicMetrics.md)
 - [VideoAllOfPromotedMetrics](docs/VideoAllOfPromotedMetrics.md)
 - [VideoAllOfPublicMetrics](docs/VideoAllOfPublicMetrics.md)


## Documentation For Authorization


## BearerToken

- **Type**: HTTP basic authentication

## UserToken

- **Type**: HTTP basic authentication


## Author


