//
// NonCompliantRulesProblem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A problem that indicates the user&#39;s rule set is not compliant. */
public struct NonCompliantRulesProblem: Codable, JSONEncodable, Hashable {

    public var detail: String?
    public var status: Int?
    public var title: String
    public var type: String

    public init(detail: String? = nil, status: Int? = nil, title: String, type: String) {
        self.detail = detail
        self.status = status
        self.title = title
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case detail
        case status
        case title
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(detail, forKey: .detail)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encode(title, forKey: .title)
        try container.encode(type, forKey: .type)
    }
}

