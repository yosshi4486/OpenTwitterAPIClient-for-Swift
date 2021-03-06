//
// VideoAllOfPublicMetrics.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Engagement metrics for the Media at the time of the request. */
public struct VideoAllOfPublicMetrics: Codable, JSONEncodable, Hashable {

    /** Number of times this video has been viewed. */
    public var viewCount: Int?

    public init(viewCount: Int? = nil) {
        self.viewCount = viewCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case viewCount = "view_count"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(viewCount, forKey: .viewCount)
    }
}

