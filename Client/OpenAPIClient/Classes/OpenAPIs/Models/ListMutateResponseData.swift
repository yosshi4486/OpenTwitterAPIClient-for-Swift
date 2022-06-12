//
// ListMutateResponseData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ListMutateResponseData: Codable, JSONEncodable {

    public var isMember: Bool?

    public init(isMember: Bool? = nil) {
        self.isMember = isMember
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isMember = "is_member"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(isMember, forKey: .isMember)
    }
}

