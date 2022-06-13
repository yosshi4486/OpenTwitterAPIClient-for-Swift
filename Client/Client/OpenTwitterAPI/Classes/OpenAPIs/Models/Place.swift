//
// Place.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Place: Codable, JSONEncodable, Hashable {

    public var containedWithin: [String]?
    /** The full name of the county in which this place exists. */
    public var country: String?
    /** A two-letter ISO 3166-1 alpha-2 country code. */
    public var countryCode: String?
    /** The full name of this place. */
    public var fullName: String
    public var geo: Geo?
    /** The identifier for this place. */
    public var id: String
    /** The human readable name of this place. */
    public var name: String?
    public var placeType: PlaceType?

    public init(containedWithin: [String]? = nil, country: String? = nil, countryCode: String? = nil, fullName: String, geo: Geo? = nil, id: String, name: String? = nil, placeType: PlaceType? = nil) {
        self.containedWithin = containedWithin
        self.country = country
        self.countryCode = countryCode
        self.fullName = fullName
        self.geo = geo
        self.id = id
        self.name = name
        self.placeType = placeType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case containedWithin = "contained_within"
        case country
        case countryCode = "country_code"
        case fullName = "full_name"
        case geo
        case id
        case name
        case placeType = "place_type"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(containedWithin, forKey: .containedWithin)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(countryCode, forKey: .countryCode)
        try container.encode(fullName, forKey: .fullName)
        try container.encodeIfPresent(geo, forKey: .geo)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(placeType, forKey: .placeType)
    }
}

