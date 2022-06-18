# Space

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | **Date** | Creation time of the Space. | [optional] 
**creatorId** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] 
**endedAt** | **Date** | End time of the Space. | [optional] 
**hostIds** | **[String]** | The user ids for the hosts of the Space. | [optional] 
**id** | **String** | The unique identifier of this Space. | 
**invitedUserIds** | **[String]** | An array of user ids for people who were invited to a Space. | [optional] 
**isTicketed** | **Bool** | Denotes if the Space is a ticketed Space. | [optional] 
**lang** | **String** | The language of the Space. | [optional] 
**participantCount** | **Int** | The number of participants in a Space. | [optional] 
**scheduledStart** | **Date** | A date time stamp for when a Space is scheduled to begin. | [optional] 
**speakerIds** | **[String]** | An array of user ids for people who were speakers in a Space. | [optional] 
**startedAt** | **Date** | When the Space was started as a date string. | [optional] 
**state** | **String** | The current state of the Space. | 
**subscriberCount** | **Int** | The number of people who have either purchased a ticket or set a reminder for this Space. | [optional] 
**title** | **String** | The title of the Space. | [optional] 
**topics** | [SpaceTopicsInner] | The topics of a Space, as selected by its creator. | [optional] 
**updatedAt** | **Date** | When the Space was last updated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


