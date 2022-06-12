//
// FullTextEntitiesAnnotationsInnerAllOf.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represents the data for the annotation. */
public struct FullTextEntitiesAnnotationsInnerAllOf: Codable, JSONEncodable {

    /** Text used to determine annotation. */
    public var normalizedText: String?
    /** Confidence factor for annotation type. */
    public var probability: Double?
    /** Annotation type. */
    public var type: String?

    public init(normalizedText: String? = nil, probability: Double? = nil, type: String? = nil) {
        self.normalizedText = normalizedText
        self.probability = probability
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case normalizedText = "normalized_text"
        case probability
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(normalizedText, forKey: .normalizedText)
        try container.encodeIfPresent(probability, forKey: .probability)
        try container.encodeIfPresent(type, forKey: .type)
    }
}
