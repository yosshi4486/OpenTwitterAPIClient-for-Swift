//
// BookmarksAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class BookmarksAPI {

    /**
     * enum for parameter tweetFields
     */
    public enum TweetFields_getUsersIdBookmarks: String, CaseIterable {
        case attachments = "attachments"
        case authorId = "author_id"
        case contextAnnotations = "context_annotations"
        case conversationId = "conversation_id"
        case createdAt = "created_at"
        case entities = "entities"
        case geo = "geo"
        case id = "id"
        case inReplyToUserId = "in_reply_to_user_id"
        case lang = "lang"
        case nonPublicMetrics = "non_public_metrics"
        case organicMetrics = "organic_metrics"
        case possiblySensitive = "possibly_sensitive"
        case promotedMetrics = "promoted_metrics"
        case publicMetrics = "public_metrics"
        case referencedTweets = "referenced_tweets"
        case replySettings = "reply_settings"
        case source = "source"
        case text = "text"
        case withheld = "withheld"
    }

    /**
     * enum for parameter expansions
     */
    public enum Expansions_getUsersIdBookmarks: String, CaseIterable {
        case attachmentsPeriodMediaKeys = "attachments.media_keys"
        case attachmentsPeriodPollIds = "attachments.poll_ids"
        case authorId = "author_id"
        case entitiesPeriodMentionsPeriodUsername = "entities.mentions.username"
        case geoPeriodPlaceId = "geo.place_id"
        case inReplyToUserId = "in_reply_to_user_id"
        case referencedTweetsPeriodId = "referenced_tweets.id"
        case referencedTweetsPeriodIdPeriodAuthorId = "referenced_tweets.id.author_id"
    }

    /**
     * enum for parameter mediaFields
     */
    public enum MediaFields_getUsersIdBookmarks: String, CaseIterable {
        case altText = "alt_text"
        case durationMs = "duration_ms"
        case height = "height"
        case mediaKey = "media_key"
        case nonPublicMetrics = "non_public_metrics"
        case organicMetrics = "organic_metrics"
        case previewImageUrl = "preview_image_url"
        case promotedMetrics = "promoted_metrics"
        case publicMetrics = "public_metrics"
        case type = "type"
        case url = "url"
        case variants = "variants"
        case width = "width"
    }

    /**
     * enum for parameter pollFields
     */
    public enum PollFields_getUsersIdBookmarks: String, CaseIterable {
        case durationMinutes = "duration_minutes"
        case endDatetime = "end_datetime"
        case id = "id"
        case options = "options"
        case votingStatus = "voting_status"
    }

    /**
     * enum for parameter userFields
     */
    public enum UserFields_getUsersIdBookmarks: String, CaseIterable {
        case createdAt = "created_at"
        case description = "description"
        case entities = "entities"
        case id = "id"
        case location = "location"
        case name = "name"
        case pinnedTweetId = "pinned_tweet_id"
        case profileImageUrl = "profile_image_url"
        case protected = "protected"
        case publicMetrics = "public_metrics"
        case url = "url"
        case username = "username"
        case verified = "verified"
        case withheld = "withheld"
    }

    /**
     * enum for parameter placeFields
     */
    public enum PlaceFields_getUsersIdBookmarks: String, CaseIterable {
        case containedWithin = "contained_within"
        case country = "country"
        case countryCode = "country_code"
        case fullName = "full_name"
        case geo = "geo"
        case id = "id"
        case name = "name"
        case placeType = "place_type"
    }

    /**
     Bookmarks by User
     
     - parameter id: (path) The ID of the authenticated source User for whom to return results. 
     - parameter maxResults: (query) The maximum number of results. (optional)
     - parameter paginationToken: (query) This parameter is used to get the next &#39;page&#39; of results. (optional)
     - parameter tweetFields: (query) A comma separated list of Tweet fields to display. (optional)
     - parameter expansions: (query) A comma separated list of fields to expand. (optional)
     - parameter mediaFields: (query) A comma separated list of Media fields to display. (optional)
     - parameter pollFields: (query) A comma separated list of Poll fields to display. (optional)
     - parameter userFields: (query) A comma separated list of User fields to display. (optional)
     - parameter placeFields: (query) A comma separated list of Place fields to display. (optional)
     - returns: Get2UsersIdBookmarksResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getUsersIdBookmarks(id: String, maxResults: Int? = nil, paginationToken: String? = nil, tweetFields: [TweetFields_getUsersIdBookmarks]? = nil, expansions: [Expansions_getUsersIdBookmarks]? = nil, mediaFields: [MediaFields_getUsersIdBookmarks]? = nil, pollFields: [PollFields_getUsersIdBookmarks]? = nil, userFields: [UserFields_getUsersIdBookmarks]? = nil, placeFields: [PlaceFields_getUsersIdBookmarks]? = nil) async throws -> Get2UsersIdBookmarksResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = getUsersIdBookmarksWithRequestBuilder(id: id, maxResults: maxResults, paginationToken: paginationToken, tweetFields: tweetFields, expansions: expansions, mediaFields: mediaFields, pollFields: pollFields, userFields: userFields, placeFields: placeFields).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     Bookmarks by User
     - GET /2/users/{id}/bookmarks
     - Returns Tweet objects that have been bookmarked by the requesting User
     - OAuth:
       - type: oauth2
       - name: OAuth2UserToken
     - parameter id: (path) The ID of the authenticated source User for whom to return results. 
     - parameter maxResults: (query) The maximum number of results. (optional)
     - parameter paginationToken: (query) This parameter is used to get the next &#39;page&#39; of results. (optional)
     - parameter tweetFields: (query) A comma separated list of Tweet fields to display. (optional)
     - parameter expansions: (query) A comma separated list of fields to expand. (optional)
     - parameter mediaFields: (query) A comma separated list of Media fields to display. (optional)
     - parameter pollFields: (query) A comma separated list of Poll fields to display. (optional)
     - parameter userFields: (query) A comma separated list of User fields to display. (optional)
     - parameter placeFields: (query) A comma separated list of Place fields to display. (optional)
     - returns: RequestBuilder<Get2UsersIdBookmarksResponse> 
     */
    open class func getUsersIdBookmarksWithRequestBuilder(id: String, maxResults: Int? = nil, paginationToken: String? = nil, tweetFields: [TweetFields_getUsersIdBookmarks]? = nil, expansions: [Expansions_getUsersIdBookmarks]? = nil, mediaFields: [MediaFields_getUsersIdBookmarks]? = nil, pollFields: [PollFields_getUsersIdBookmarks]? = nil, userFields: [UserFields_getUsersIdBookmarks]? = nil, placeFields: [PlaceFields_getUsersIdBookmarks]? = nil) -> RequestBuilder<Get2UsersIdBookmarksResponse> {
        var localVariablePath = "/2/users/{id}/bookmarks"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenTwitterAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "max_results": maxResults?.encodeToJSON(),
            "pagination_token": paginationToken?.encodeToJSON(),
            "tweet.fields": tweetFields?.encodeToJSON(),
            "expansions": expansions?.encodeToJSON(),
            "media.fields": mediaFields?.encodeToJSON(),
            "poll.fields": pollFields?.encodeToJSON(),
            "user.fields": userFields?.encodeToJSON(),
            "place.fields": placeFields?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Get2UsersIdBookmarksResponse>.Type = OpenTwitterAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Add Tweet to Bookmarks
     
     - parameter id: (path) The ID of the authenticated source User for whom to add bookmarks. 
     - parameter bookmarkAddRequest: (body)  
     - returns: BookmarkMutationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func postUsersIdBookmarks(id: String, bookmarkAddRequest: BookmarkAddRequest) async throws -> BookmarkMutationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = postUsersIdBookmarksWithRequestBuilder(id: id, bookmarkAddRequest: bookmarkAddRequest).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     Add Tweet to Bookmarks
     - POST /2/users/{id}/bookmarks
     - Adds a Tweet (ID in the body) to the requesting User's (in the path) bookmarks
     - OAuth:
       - type: oauth2
       - name: OAuth2UserToken
     - parameter id: (path) The ID of the authenticated source User for whom to add bookmarks. 
     - parameter bookmarkAddRequest: (body)  
     - returns: RequestBuilder<BookmarkMutationResponse> 
     */
    open class func postUsersIdBookmarksWithRequestBuilder(id: String, bookmarkAddRequest: BookmarkAddRequest) -> RequestBuilder<BookmarkMutationResponse> {
        var localVariablePath = "/2/users/{id}/bookmarks"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenTwitterAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: bookmarkAddRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BookmarkMutationResponse>.Type = OpenTwitterAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Remove a bookmarked Tweet
     
     - parameter id: (path) The ID of the authenticated source User whose bookmark is to be removed. 
     - parameter tweetId: (path) The ID of the Tweet that the source User is removing from bookmarks. 
     - returns: BookmarkMutationResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func usersIdBookmarksDelete(id: String, tweetId: String) async throws -> BookmarkMutationResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = usersIdBookmarksDeleteWithRequestBuilder(id: id, tweetId: tweetId).execute { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     Remove a bookmarked Tweet
     - DELETE /2/users/{id}/bookmarks/{tweet_id}
     - Removes a Tweet from the requesting User's bookmarked Tweets.
     - OAuth:
       - type: oauth2
       - name: OAuth2UserToken
     - parameter id: (path) The ID of the authenticated source User whose bookmark is to be removed. 
     - parameter tweetId: (path) The ID of the Tweet that the source User is removing from bookmarks. 
     - returns: RequestBuilder<BookmarkMutationResponse> 
     */
    open class func usersIdBookmarksDeleteWithRequestBuilder(id: String, tweetId: String) -> RequestBuilder<BookmarkMutationResponse> {
        var localVariablePath = "/2/users/{id}/bookmarks/{tweet_id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let tweetIdPreEscape = "\(APIHelper.mapValueToPathItem(tweetId))"
        let tweetIdPostEscape = tweetIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{tweet_id}", with: tweetIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenTwitterAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BookmarkMutationResponse>.Type = OpenTwitterAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
