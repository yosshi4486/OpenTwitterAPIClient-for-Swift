//
// MultiListNoPaginationResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MultiListNoPaginationResponse: Codable {

    public var data: [List]?
    public var meta: MultiListNoPaginationResponseMeta?
    public var errors: [Problem]?

    public init(data: [List]? = nil, meta: MultiListNoPaginationResponseMeta? = nil, errors: [Problem]? = nil) {
        self.data = data
        self.meta = meta
        self.errors = errors
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case meta
        case errors
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(meta, forKey: .meta)
        try container.encodeIfPresent(errors, forKey: .errors)
    }
}
