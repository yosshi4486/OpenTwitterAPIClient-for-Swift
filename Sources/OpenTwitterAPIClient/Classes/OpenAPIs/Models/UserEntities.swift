//
// UserEntities.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A list of metadata found in the User&#39;s profile description. */
public struct UserEntities: Codable, JSONEncodable, Hashable {

    public var description: FullTextEntities?
    public var url: UserEntitiesUrl?

    public init(description: FullTextEntities? = nil, url: UserEntitiesUrl? = nil) {
        self.description = description
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case description
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(url, forKey: .url)
    }
}

