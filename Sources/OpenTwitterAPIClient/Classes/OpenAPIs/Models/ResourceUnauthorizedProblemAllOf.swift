//
// ResourceUnauthorizedProblemAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResourceUnauthorizedProblemAllOf: Codable, JSONEncodable, Hashable {

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
    public var parameter: String
    public var resourceId: String
    public var resourceType: ResourceType
    public var section: Section
    public var value: String

    public init(parameter: String, resourceId: String, resourceType: ResourceType, section: Section, value: String) {
        self.parameter = parameter
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.section = section
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case parameter
        case resourceId = "resource_id"
        case resourceType = "resource_type"
        case section
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(parameter, forKey: .parameter)
        try container.encode(resourceId, forKey: .resourceId)
        try container.encode(resourceType, forKey: .resourceType)
        try container.encode(section, forKey: .section)
        try container.encode(value, forKey: .value)
    }
}

