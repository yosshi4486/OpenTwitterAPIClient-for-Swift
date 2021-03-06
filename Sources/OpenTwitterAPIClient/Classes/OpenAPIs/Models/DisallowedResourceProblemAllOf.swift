//
// DisallowedResourceProblemAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DisallowedResourceProblemAllOf: Codable, JSONEncodable, Hashable {

    public enum ResourceType: String, Codable, CaseIterable {
        case user = "user"
        case tweet = "tweet"
        case media = "media"
        case list = "list"
        case space = "space"
    }
    public enum Section: String, Codable, CaseIterable {
        case data = "data"
        case includes = "includes"
    }
    public var resourceId: String
    public var resourceType: ResourceType
    public var section: Section

    public init(resourceId: String, resourceType: ResourceType, section: Section) {
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.section = section
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case resourceId = "resource_id"
        case resourceType = "resource_type"
        case section
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(resourceId, forKey: .resourceId)
        try container.encode(resourceType, forKey: .resourceType)
        try container.encode(section, forKey: .section)
    }
}

