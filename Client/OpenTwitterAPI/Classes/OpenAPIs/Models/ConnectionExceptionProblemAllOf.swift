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

public struct ConnectionExceptionProblemAllOf: Codable, JSONEncodable, Hashable {

    public enum ConnectionIssue: String, Codable, CaseIterable {
        case tooManyConnections = "TooManyConnections"
        case provisioningSubscription = "ProvisioningSubscription"
        case ruleConfigurationIssue = "RuleConfigurationIssue"
        case rulesInvalidIssue = "RulesInvalidIssue"
    }
    public var connectionIssue: ConnectionIssue?

    public init(connectionIssue: ConnectionIssue? = nil) {
        self.connectionIssue = connectionIssue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case connectionIssue = "connection_issue"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(connectionIssue, forKey: .connectionIssue)
    }
}
