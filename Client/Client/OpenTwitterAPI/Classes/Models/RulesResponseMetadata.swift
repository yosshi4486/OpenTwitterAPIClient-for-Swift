//
// RulesResponseMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RulesResponseMetadata: Codable, JSONEncodable, Hashable {

    /** The next token. */
    public var nextToken: String?
    /** Number of Rules in result set. */
    public var resultCount: Int?
    public var sent: String
    public var summary: RulesRequestSummary?

    public init(nextToken: String? = nil, resultCount: Int? = nil, sent: String, summary: RulesRequestSummary? = nil) {
        self.nextToken = nextToken
        self.resultCount = resultCount
        self.sent = sent
        self.summary = summary
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nextToken = "next_token"
        case resultCount = "result_count"
        case sent
        case summary
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(nextToken, forKey: .nextToken)
        try container.encodeIfPresent(resultCount, forKey: .resultCount)
        try container.encode(sent, forKey: .sent)
        try container.encodeIfPresent(summary, forKey: .summary)
    }
}

