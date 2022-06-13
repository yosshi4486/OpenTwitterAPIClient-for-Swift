//
// ResourceUnauthorizedProblem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A problem that indicates you are not allowed to see a particular Tweet, User, etc. */
public struct ResourceUnauthorizedProblem: Codable, JSONEncodable, Hashable {

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
    public var detail: String?
    public var status: Int?
    public var title: String
    public var type: String
    public var parameter: String
    public var resourceId: String
    public var resourceType: ResourceType
    public var section: Section
    public var value: String

    public init(detail: String? = nil, status: Int? = nil, title: String, type: String, parameter: String, resourceId: String, resourceType: ResourceType, section: Section, value: String) {
        self.detail = detail
        self.status = status
        self.title = title
        self.type = type
        self.parameter = parameter
        self.resourceId = resourceId
        self.resourceType = resourceType
        self.section = section
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case detail
        case status
        case title
        case type
        case parameter
        case resourceId = "resource_id"
        case resourceType = "resource_type"
        case section
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(detail, forKey: .detail)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encode(title, forKey: .title)
        try container.encode(type, forKey: .type)
        try container.encode(parameter, forKey: .parameter)
        try container.encode(resourceId, forKey: .resourceId)
        try container.encode(resourceType, forKey: .resourceType)
        try container.encode(section, forKey: .section)
        try container.encode(value, forKey: .value)
    }
}

