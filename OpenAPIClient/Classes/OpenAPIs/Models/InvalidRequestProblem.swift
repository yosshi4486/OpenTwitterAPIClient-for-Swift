//
// InvalidRequestProblem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A problem that indicates this request is invalid. */
public struct InvalidRequestProblem: Codable {

    public enum ModelType: String, Codable, CaseIterable {
        case httpsApiTwitterCom2ProblemsInvalidRequest = "https://api.twitter.com/2/problems/invalid-request"
    }
    public var title: String
    public var detail: String
    public var type: ModelType?
    public var errors: [InvalidRequestProblemAllOfErrors]?

    public init(title: String, detail: String, type: ModelType? = nil, errors: [InvalidRequestProblemAllOfErrors]? = nil) {
        self.title = title
        self.detail = detail
        self.type = type
        self.errors = errors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case detail
        case type
        case errors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encode(detail, forKey: .detail)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(errors, forKey: .errors)
    }
}
