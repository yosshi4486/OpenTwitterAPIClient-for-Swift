//
// ConflictProblemAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ConflictProblemAllOf: Codable {

    public enum ModelType: String, Codable, CaseIterable {
        case httpsApiTwitterCom2ProblemsConflict = "https://api.twitter.com/2/problems/conflict"
    }
    public var type: ModelType?

    public init(type: ModelType? = nil) {
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
    }
}

