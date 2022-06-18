//
// UsageCapExceededProblemAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UsageCapExceededProblemAllOf: Codable, JSONEncodable, Hashable {

    public enum Period: String, Codable, CaseIterable {
        case daily = "Daily"
        case monthly = "Monthly"
    }
    public enum Scope: String, Codable, CaseIterable {
        case account = "Account"
        case product = "Product"
    }
    public var period: Period?
    public var scope: Scope?

    public init(period: Period? = nil, scope: Scope? = nil) {
        self.period = period
        self.scope = scope
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case period
        case scope
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(period, forKey: .period)
        try container.encodeIfPresent(scope, forKey: .scope)
    }
}
