//
// UsersFollowingLookupResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UsersFollowingLookupResponse: Codable {

    public var data: [User]?
    public var includes: Expansions?
    public var errors: [Problem]?
    public var meta: GenericMultipleUsersLookupResponseMeta?

    public init(data: [User]? = nil, includes: Expansions? = nil, errors: [Problem]? = nil, meta: GenericMultipleUsersLookupResponseMeta? = nil) {
        self.data = data
        self.includes = includes
        self.errors = errors
        self.meta = meta
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case includes
        case errors
        case meta
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(includes, forKey: .includes)
        try container.encodeIfPresent(errors, forKey: .errors)
        try container.encodeIfPresent(meta, forKey: .meta)
    }
}

