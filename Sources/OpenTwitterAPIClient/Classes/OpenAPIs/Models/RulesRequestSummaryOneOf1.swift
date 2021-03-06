//
// RulesRequestSummaryOneOf1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RulesRequestSummaryOneOf1: Codable, JSONEncodable, Hashable {

    /** Number of user-specified stream filtering rules that were deleted. */
    public var deleted: Int
    /** Number of user-specified stream filtering rules that were not deleted. */
    public var notDeleted: Int

    public init(deleted: Int, notDeleted: Int) {
        self.deleted = deleted
        self.notDeleted = notDeleted
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case deleted
        case notDeleted = "not_deleted"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(deleted, forKey: .deleted)
        try container.encode(notDeleted, forKey: .notDeleted)
    }
}

