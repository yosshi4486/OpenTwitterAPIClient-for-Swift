//
// RulesRequestSummaryOneOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A summary of the results of the addition of user-specified stream filtering rules. */
public struct RulesRequestSummaryOneOf: Codable {

    /** Number of user-specified stream filtering rules that were created. */
    public var created: Int
    /** Number of user-specified stream filtering rules that were not created. */
    public var notCreated: Int
    /** Number of valid user-specified stream filtering rules. */
    public var valid: Int
    /** Number of invalid user-specified stream filtering rules. */
    public var invalid: Int

    public init(created: Int, notCreated: Int, valid: Int, invalid: Int) {
        self.created = created
        self.notCreated = notCreated
        self.valid = valid
        self.invalid = invalid
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case created
        case notCreated = "not_created"
        case valid
        case invalid
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(created, forKey: .created)
        try container.encode(notCreated, forKey: .notCreated)
        try container.encode(valid, forKey: .valid)
        try container.encode(invalid, forKey: .invalid)
    }
}

