//
// Get2ListsIdTweetsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Get2ListsIdTweetsResponse: Codable, JSONEncodable, Hashable {

    public var data: [Tweet]?
    public var errors: [Problem]?
    public var includes: Expansions?
    public var meta: Get2ListsIdFollowersResponseMeta?

    public init(data: [Tweet]? = nil, errors: [Problem]? = nil, includes: Expansions? = nil, meta: Get2ListsIdFollowersResponseMeta? = nil) {
        self.data = data
        self.errors = errors
        self.includes = includes
        self.meta = meta
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case errors
        case includes
        case meta
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(errors, forKey: .errors)
        try container.encodeIfPresent(includes, forKey: .includes)
        try container.encodeIfPresent(meta, forKey: .meta)
    }
}

