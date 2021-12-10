//
// ConnectionExceptionProblemAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ConnectionExceptionProblemAllOf: Codable {

    public enum ModelType: String, Codable, CaseIterable {
        case httpsApiTwitterCom2ProblemsStreamingConnection = "https://api.twitter.com/2/problems/streaming-connection"
    }
    public enum ConnectionIssue: String, Codable, CaseIterable {
        case tooManyConnections = "TooManyConnections"
        case provisioningSubscription = "ProvisioningSubscription"
        case ruleConfigurationIssue = "RuleConfigurationIssue"
        case rulesInvalidIssue = "RulesInvalidIssue"
    }
    public var type: ModelType?
    public var connectionIssue: ConnectionIssue?

    public init(type: ModelType? = nil, connectionIssue: ConnectionIssue? = nil) {
        self.type = type
        self.connectionIssue = connectionIssue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case connectionIssue = "connection_issue"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(connectionIssue, forKey: .connectionIssue)
    }
}

