//
// List.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A Twitter List is a curated group of accounts. */
public struct List: Codable, JSONEncodable {

    public var createdAt: Date?
    public var description: String?
    public var followerCount: Int?
    /** The unique identifier of this List. */
    public var id: String
    public var memberCount: Int?
    /** The name of this List. */
    public var name: String
    /** Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. */
    public var ownerId: String?
    public var _private: Bool?

    public init(createdAt: Date? = nil, description: String? = nil, followerCount: Int? = nil, id: String, memberCount: Int? = nil, name: String, ownerId: String? = nil, _private: Bool? = nil) {
        self.createdAt = createdAt
        self.description = description
        self.followerCount = followerCount
        self.id = id
        self.memberCount = memberCount
        self.name = name
        self.ownerId = ownerId
        self._private = _private
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt = "created_at"
        case description
        case followerCount = "follower_count"
        case id
        case memberCount = "member_count"
        case name
        case ownerId = "owner_id"
        case _private = "private"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(followerCount, forKey: .followerCount)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(memberCount, forKey: .memberCount)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(ownerId, forKey: .ownerId)
        try container.encodeIfPresent(_private, forKey: ._private)
    }
}
