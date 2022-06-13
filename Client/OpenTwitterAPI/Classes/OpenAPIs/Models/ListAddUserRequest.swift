//
// ListAddUserRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ListAddUserRequest: Codable, JSONEncodable, Hashable {

    /** Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. */
    public var userId: String

    public init(userId: String) {
        self.userId = userId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userId = "user_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(userId, forKey: .userId)
    }
}
