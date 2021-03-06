//
// AddOrDeleteRulesResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A response from modifying user-specified stream filtering rules. */
public struct AddOrDeleteRulesResponse: Codable, JSONEncodable, Hashable {

    /** All user-specified stream filtering rules that were created. */
    public var data: [Rule]?
    public var errors: [Problem]?
    public var meta: RulesResponseMetadata

    public init(data: [Rule]? = nil, errors: [Problem]? = nil, meta: RulesResponseMetadata) {
        self.data = data
        self.errors = errors
        self.meta = meta
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case errors
        case meta
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(errors, forKey: .errors)
        try container.encode(meta, forKey: .meta)
    }
}

