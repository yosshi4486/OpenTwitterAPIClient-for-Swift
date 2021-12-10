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

public struct Place: Codable {

    /** The identifier for this place */
    public var id: String
    /** The human readable name of this place. */
    public var name: String?
    /** A two-letter ISO 3166-1 alpha-2 country code */
    public var countryCode: String?
    public var placeType: PlaceType?
    /** The full name of this place. */
    public var fullName: String
    /** The full name of the county in which this place exists. */
    public var country: String?
    public var containedWithin: [String]?
    public var geo: Geo?

    public init(id: String, name: String? = nil, countryCode: String? = nil, placeType: PlaceType? = nil, fullName: String, country: String? = nil, containedWithin: [String]? = nil, geo: Geo? = nil) {
        self.id = id
        self.name = name
        self.countryCode = countryCode
        self.placeType = placeType
        self.fullName = fullName
        self.country = country
        self.containedWithin = containedWithin
        self.geo = geo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case countryCode = "country_code"
        case placeType = "place_type"
        case fullName = "full_name"
        case country
        case containedWithin = "contained_within"
        case geo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(countryCode, forKey: .countryCode)
        try container.encodeIfPresent(placeType, forKey: .placeType)
        try container.encode(fullName, forKey: .fullName)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(containedWithin, forKey: .containedWithin)
        try container.encodeIfPresent(geo, forKey: .geo)
    }
}

