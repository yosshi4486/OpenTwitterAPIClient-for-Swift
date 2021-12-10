//
// VideoAllOfNonPublicMetrics.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Nonpublic engagement metrics for the Media at the time of the request. */
public struct VideoAllOfNonPublicMetrics: Codable {

    /** Number of users who made it through 0% of the video. */
    public var playback0Count: Int?
    /** Number of users who made it through 25% of the video. */
    public var playback25Count: Int?
    /** Number of users who made it through 50% of the video. */
    public var playback50Count: Int?
    /** Number of users who made it through 75% of the video. */
    public var playback75Count: Int?
    /** Number of users who made it through 100% of the video. */
    public var playback100Count: Int?

    public init(playback0Count: Int? = nil, playback25Count: Int? = nil, playback50Count: Int? = nil, playback75Count: Int? = nil, playback100Count: Int? = nil) {
        self.playback0Count = playback0Count
        self.playback25Count = playback25Count
        self.playback50Count = playback50Count
        self.playback75Count = playback75Count
        self.playback100Count = playback100Count
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case playback0Count = "playback_0_count"
        case playback25Count = "playback_25_count"
        case playback50Count = "playback_50_count"
        case playback75Count = "playback_75_count"
        case playback100Count = "playback_100_count"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(playback0Count, forKey: .playback0Count)
        try container.encodeIfPresent(playback25Count, forKey: .playback25Count)
        try container.encodeIfPresent(playback50Count, forKey: .playback50Count)
        try container.encodeIfPresent(playback75Count, forKey: .playback75Count)
        try container.encodeIfPresent(playback100Count, forKey: .playback100Count)
    }
}

