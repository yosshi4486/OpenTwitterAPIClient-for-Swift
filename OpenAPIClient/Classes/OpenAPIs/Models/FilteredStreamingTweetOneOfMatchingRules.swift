//
// FilteredStreamingTweetOneOfMatchingRules.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct FilteredStreamingTweetOneOfMatchingRules: Codable {

    /** Unique identifier of this rule. */
    public var id: String
    /** The user-supplied tag assigned to the rule which matched */
    public var tag: String?

    public init(id: String, tag: String? = nil) {
        self.id = id
        self.tag = tag
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case tag
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(tag, forKey: .tag)
    }
}

