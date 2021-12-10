//
// ListUpdateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ListUpdateRequest: Codable {

    public var name: String?
    public var description: String?
    public var _private: Bool?

    public init(name: String? = nil, description: String? = nil, _private: Bool? = nil) {
        self.name = name
        self.description = description
        self._private = _private
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case _private = "private"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(_private, forKey: ._private)
    }
}
