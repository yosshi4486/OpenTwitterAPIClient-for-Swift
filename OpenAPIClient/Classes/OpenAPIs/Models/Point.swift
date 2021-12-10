//
// Point.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** A [GeoJson Point](https://tools.ietf.org/html/rfc7946#section-3.1.2) geometry object. */
public struct Point: Codable {

    public enum ModelType: String, Codable, CaseIterable {
        case point = "Point"
    }
    public var type: ModelType
    /** A [GeoJson Position](https://tools.ietf.org/html/rfc7946#section-3.1.1) in the format `[longitude,latitude]`. */
    public var coordinates: [Double]

    public init(type: ModelType, coordinates: [Double]) {
        self.type = type
        self.coordinates = coordinates
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case coordinates
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(coordinates, forKey: .coordinates)
    }
}

