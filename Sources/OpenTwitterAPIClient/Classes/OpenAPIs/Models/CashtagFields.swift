//
// CashtagFields.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represent the portion of text recognized as a Cashtag, and its start and end position within the text. */
public struct CashtagFields: Codable, JSONEncodable, Hashable {

    public var tag: String

    public init(tag: String) {
        self.tag = tag
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tag
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(tag, forKey: .tag)
    }
}

