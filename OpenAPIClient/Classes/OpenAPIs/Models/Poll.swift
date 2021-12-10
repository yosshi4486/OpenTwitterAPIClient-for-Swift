//
// Poll.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Represent a Poll attached to a Tweet */
public struct Poll: Codable {

    public enum VotingStatus: String, Codable, CaseIterable {
        case _open = "open"
        case closed = "closed"
    }
    /** Unique identifier of this poll. */
    public var id: String
    public var options: [PollOption]
    public var votingStatus: VotingStatus?
    public var endDatetime: Date?
    public var durationMinutes: Int?

    public init(id: String, options: [PollOption], votingStatus: VotingStatus? = nil, endDatetime: Date? = nil, durationMinutes: Int? = nil) {
        self.id = id
        self.options = options
        self.votingStatus = votingStatus
        self.endDatetime = endDatetime
        self.durationMinutes = durationMinutes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case options
        case votingStatus = "voting_status"
        case endDatetime = "end_datetime"
        case durationMinutes = "duration_minutes"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(options, forKey: .options)
        try container.encodeIfPresent(votingStatus, forKey: .votingStatus)
        try container.encodeIfPresent(endDatetime, forKey: .endDatetime)
        try container.encodeIfPresent(durationMinutes, forKey: .durationMinutes)
    }
}

