//
// TweetWithheld.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Indicates withholding details for [withheld content](https://help.twitter.com/en/rules-and-policies/tweet-withheld-by-country). */
public struct TweetWithheld: Codable, JSONEncodable, Hashable {

    public enum Scope: String, Codable, CaseIterable {
        case tweet = "tweet"
        case user = "user"
    }
    /** Indicates if the content is being withheld for on the basis of copyright infringement. */
    public var copyright: Bool
    /** Provides a list of countries where this content is not available. */
    public var countryCodes: Set<String>
    /** Indicates whether the content being withheld is the `tweet` or a `user`. */
    public var scope: Scope?

    public init(copyright: Bool, countryCodes: Set<String>, scope: Scope? = nil) {
        self.copyright = copyright
        self.countryCodes = countryCodes
        self.scope = scope
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case copyright
        case countryCodes = "country_codes"
        case scope
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(copyright, forKey: .copyright)
        try container.encode(countryCodes, forKey: .countryCodes)
        try container.encodeIfPresent(scope, forKey: .scope)
    }
}

