//
// ListPinnedResponseData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ListPinnedResponseData: Codable, JSONEncodable {

    public var pinned: Bool?

    public init(pinned: Bool? = nil) {
        self.pinned = pinned
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pinned
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(pinned, forKey: .pinned)
    }
}
