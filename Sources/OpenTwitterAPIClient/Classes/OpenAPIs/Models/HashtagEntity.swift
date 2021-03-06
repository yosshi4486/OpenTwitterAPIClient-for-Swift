//
// HashtagEntity.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct HashtagEntity: Codable, JSONEncodable, Hashable {

    /** Index (zero-based) at which position this entity ends.  The index is exclusive. */
    public var end: Int
    /** Index (zero-based) at which position this entity starts.  The index is inclusive. */
    public var start: Int
    /** The text of the Hashtag. */
    public var tag: String

    public init(end: Int, start: Int, tag: String) {
        self.end = end
        self.start = start
        self.tag = tag
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case end
        case start
        case tag
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(end, forKey: .end)
        try container.encode(start, forKey: .start)
        try container.encode(tag, forKey: .tag)
    }
}

