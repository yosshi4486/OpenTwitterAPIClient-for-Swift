//
// TweetCreateRequestPoll.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Poll options for a Tweet with a poll. This is mutually exclusive from Media and Quote Tweet Id. */
public struct TweetCreateRequestPoll: Codable, JSONEncodable, Hashable {

    public enum ReplySettings: String, Codable, CaseIterable {
        case following = "following"
        case mentionedusers = "mentionedUsers"
    }
    /** Duration of the poll in minutes. */
    public var durationMinutes: Int
    public var options: [String]
    /** Settings to indicate who can reply to the Tweet. */
    public var replySettings: ReplySettings?

    public init(durationMinutes: Int, options: [String], replySettings: ReplySettings? = nil) {
        self.durationMinutes = durationMinutes
        self.options = options
        self.replySettings = replySettings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case durationMinutes = "duration_minutes"
        case options
        case replySettings = "reply_settings"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(durationMinutes, forKey: .durationMinutes)
        try container.encode(options, forKey: .options)
        try container.encodeIfPresent(replySettings, forKey: .replySettings)
    }
}
