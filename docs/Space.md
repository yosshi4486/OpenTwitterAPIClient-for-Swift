# Space

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier of this Space. | 
**state** | **String** | The current state of the space. | 
**startedAt** | **Date** | When the space was started as a date string | [optional] 
**isTicketed** | **Bool** | Denotes if the space is a ticketed space | [optional] 
**participantCount** | **Int** | The number of participants in a space | [optional] 
**title** | **String** | The title of the space | [optional] 
**hostIds** | **[String]** | The user ids for the hosts of the space | [optional] 
**updatedAt** | **Date** | When the space was last updated | [optional] 
**createdAt** | **Date** | Creation time of the space | [optional] 
**creatorId** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] 
**lang** | **String** | The language of the space | [optional] 
**speakerIds** | **[String]** | An array of user ids for people who were speakers in a space | [optional] 
**invitedUserIds** | **[String]** | An array of user ids for people who were invited to a space | [optional] 
**scheduledStart** | **Date** | A date time stamp for when a space is scheduled to begin | [optional] 
**endedAt** | **Date** | End time of the space | [optional] 
**topics** | [SpaceTopics] | The topics of a space, as selected by its creator | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


