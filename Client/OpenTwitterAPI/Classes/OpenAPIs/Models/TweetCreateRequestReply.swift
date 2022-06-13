//
// TweetCreateRequestReply.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Tweet information of the Tweet being replied to. */
public struct TweetCreateRequestReply: Codable, JSONEncodable, Hashable {

    /** A list of User Ids to be excluded from the reply Tweet. */
    public var excludeReplyUserIds: [String]?
    /** Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. */
    public var inReplyToTweetId: String

    public init(excludeReplyUserIds: [String]? = nil, inReplyToTweetId: String) {
        self.excludeReplyUserIds = excludeReplyUserIds
        self.inReplyToTweetId = inReplyToTweetId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case excludeReplyUserIds = "exclude_reply_user_ids"
        case inReplyToTweetId = "in_reply_to_tweet_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(excludeReplyUserIds, forKey: .excludeReplyUserIds)
        try container.encode(inReplyToTweetId, forKey: .inReplyToTweetId)
    }
}

