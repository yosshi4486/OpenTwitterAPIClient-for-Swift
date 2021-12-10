//
// Model2TweetsGeo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Place ID being attached to the Tweet for geo location. */
public struct Model2TweetsGeo: Codable {

    public var placeId: String?

    public init(placeId: String? = nil) {
        self.placeId = placeId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case placeId = "place_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(placeId, forKey: .placeId)
    }
}

