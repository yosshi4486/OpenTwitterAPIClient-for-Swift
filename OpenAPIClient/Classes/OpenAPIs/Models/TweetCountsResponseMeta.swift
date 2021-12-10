//
// TweetCountsResponseMeta.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TweetCountsResponseMeta: Codable {

    /** This value is used to get the next 'page' of results by providing it to the next_token parameter. */
    public var nextToken: String?
    /** Sum of search query count results */
    public var totalTweetCount: Int?

    public init(nextToken: String? = nil, totalTweetCount: Int? = nil) {
        self.nextToken = nextToken
        self.totalTweetCount = totalTweetCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nextToken = "next_token"
        case totalTweetCount = "total_tweet_count"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(nextToken, forKey: .nextToken)
        try container.encodeIfPresent(totalTweetCount, forKey: .totalTweetCount)
    }
}
