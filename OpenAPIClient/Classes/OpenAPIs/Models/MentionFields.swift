//
// MentionFields.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represent the portion of text recognized as a User mention, and its start and end position within the text. */
public struct MentionFields: Codable {

    /** The Twitter handle (screen name) of this user. */
    public var username: String
    /** Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. */
    public var id: String

    public init(username: String, id: String) {
        self.username = username
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case username
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(username, forKey: .username)
        try container.encode(id, forKey: .id)
    }
}

