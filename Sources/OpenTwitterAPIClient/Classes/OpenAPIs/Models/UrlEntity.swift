//
// UrlEntity.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represent the portion of text recognized as a URL, and its start and end position within the text. */
public struct UrlEntity: Codable, JSONEncodable, Hashable {

    /** Index (zero-based) at which position this entity ends.  The index is exclusive. */
    public var end: Int
    /** Index (zero-based) at which position this entity starts.  The index is inclusive. */
    public var start: Int
    /** Description of the URL landing page. */
    public var description: String?
    /** The URL as displayed in the Twitter client. */
    public var displayUrl: String?
    /** A validly formatted URL. */
    public var expandedUrl: String?
    public var images: [UrlImage]?
    /** The Media Key identifier for this attachment. */
    public var mediaKey: String?
    /** HTTP Status Code. */
    public var status: Int?
    /** Title of the page the URL points to. */
    public var title: String?
    /** Fully resolved url. */
    public var unwoundUrl: String?
    /** A validly formatted URL. */
    public var url: String

    public init(end: Int, start: Int, description: String? = nil, displayUrl: String? = nil, expandedUrl: String? = nil, images: [UrlImage]? = nil, mediaKey: String? = nil, status: Int? = nil, title: String? = nil, unwoundUrl: String? = nil, url: String) {
        self.end = end
        self.start = start
        self.description = description
        self.displayUrl = displayUrl
        self.expandedUrl = expandedUrl
        self.images = images
        self.mediaKey = mediaKey
        self.status = status
        self.title = title
        self.unwoundUrl = unwoundUrl
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case end
        case start
        case description
        case displayUrl = "display_url"
        case expandedUrl = "expanded_url"
        case images
        case mediaKey = "media_key"
        case status
        case title
        case unwoundUrl = "unwound_url"
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(end, forKey: .end)
        try container.encode(start, forKey: .start)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(displayUrl, forKey: .displayUrl)
        try container.encodeIfPresent(expandedUrl, forKey: .expandedUrl)
        try container.encodeIfPresent(images, forKey: .images)
        try container.encodeIfPresent(mediaKey, forKey: .mediaKey)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(unwoundUrl, forKey: .unwoundUrl)
        try container.encode(url, forKey: .url)
    }
}

