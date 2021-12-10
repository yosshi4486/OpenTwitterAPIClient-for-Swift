//
// RulesCapProblem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** You have exceeded the maximum number of rules. */
public struct RulesCapProblem: Codable {

    public enum ModelType: String, Codable, CaseIterable {
        case httpsApiTwitterCom2ProblemsRuleCap = "https://api.twitter.com/2/problems/rule-cap"
    }
    public var title: String
    public var detail: String
    public var type: ModelType?

    public init(title: String, detail: String, type: ModelType? = nil) {
        self.title = title
        self.detail = detail
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case detail
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encode(detail, forKey: .detail)
        try container.encodeIfPresent(type, forKey: .type)
    }
}

