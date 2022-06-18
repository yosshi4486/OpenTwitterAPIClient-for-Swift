//
// ContextAnnotationEntityFields.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents the data for the context annotation entity. */
public struct ContextAnnotationEntityFields: Codable, JSONEncodable, Hashable {

    /** Description of the context annotation entity. */
    public var description: String?
    /** The unique id for a context annotation entity. */
    public var id: String
    /** Name of the context annotation entity. */
    public var name: String?

    public init(description: String? = nil, id: String, name: String? = nil) {
        self.description = description
        self.id = id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case description
        case id
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
    }
}
