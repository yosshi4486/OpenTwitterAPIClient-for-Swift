//
// AddOrDeleteRulesRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum AddOrDeleteRulesRequest: Codable, JSONEncodable, Hashable {
    case typeAddRulesRequest(AddRulesRequest)
    case typeDeleteRulesRequest(DeleteRulesRequest)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAddRulesRequest(let value):
            try container.encode(value)
        case .typeDeleteRulesRequest(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AddRulesRequest.self) {
            self = .typeAddRulesRequest(value)
        } else if let value = try? container.decode(DeleteRulesRequest.self) {
            self = .typeDeleteRulesRequest(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of AddOrDeleteRulesRequest"))
        }
    }
}

