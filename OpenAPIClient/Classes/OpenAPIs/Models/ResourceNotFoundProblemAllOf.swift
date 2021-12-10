//
// ResourceNotFoundProblemAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ResourceNotFoundProblemAllOf: Codable {

    public enum ModelType: String, Codable, CaseIterable {
        case httpsApiTwitterCom2ProblemsResourceNotFound = "https://api.twitter.com/2/problems/resource-not-found"
    }
    public enum ResourceType: String, Codable, CaseIterable {
        case user = "user"
        case tweet = "tweet"
        case media = "media"
    }
    public var type: ModelType?
    public var parameter: String
    /** Value will match the schema of the field. */
    public var value: AnyCodable?
    public var resourceId: String
    public var resourceType: ResourceType

    public init(type: ModelType? = nil, parameter: String, value: AnyCodable?, resourceId: String, resourceType: ResourceType) {
        self.type = type
        self.parameter = parameter
        self.value = value
        self.resourceId = resourceId
        self.resourceType = resourceType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case parameter
        case value
        case resourceId = "resource_id"
        case resourceType = "resource_type"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encode(parameter, forKey: .parameter)
        try container.encode(value, forKey: .value)
        try container.encode(resourceId, forKey: .resourceId)
        try container.encode(resourceType, forKey: .resourceType)
    }
}
