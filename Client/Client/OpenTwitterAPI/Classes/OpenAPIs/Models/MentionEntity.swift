//
// MentionEntity.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MentionEntity: Codable, JSONEncodable, Hashable {

    /** Index (zero-based) at which position this entity ends.  The index is exclusive. */
    public var end: Int
    /** Index (zero-based) at which position this entity starts.  The index is inclusive. */
    public var start: Int
    /** Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. */
    public var id: String
    /** The Twitter handle (screen name) of this user. */
    public var username: String

    public init(end: Int, start: Int, id: String, username: String) {
        self.end = end
        self.start = start
        self.id = id
        self.username = username
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case end
        case start
        case id
        case username
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(end, forKey: .end)
        try container.encode(start, forKey: .start)
        try container.encode(id, forKey: .id)
        try container.encode(username, forKey: .username)
    }
}

