//
// ListMemberResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ListMemberResponse: Codable {

    public var data: ListMemberResponseData?
    public var errors: [Problem]?

    public init(data: ListMemberResponseData? = nil, errors: [Problem]? = nil) {
        self.data = data
        self.errors = errors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case errors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(errors, forKey: .errors)
    }
}

