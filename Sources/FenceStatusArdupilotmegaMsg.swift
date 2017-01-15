//
//  FenceStatusArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Status of geo-fencing. Sent in extended status stream when fencing enabled
public struct FenceStatus {

	/// 0 if currently inside fence, 1 if outside
	public let breachStatus: UInt8

	/// number of fence breaches
	public let breachCount: UInt16

	/// last breach type (see FENCE_BREACH_* enum)
	public let breachType: FenceBreach

	/// time of last breach in milliseconds since boot
	public let breachTime: UInt32
}

extension FenceStatus: Message {
    public static let id = UInt8(162)
    public static var typeName = "FENCE_STATUS"
    public static var typeDescription = "Status of geo-fencing. Sent in extended status stream when fencing enabled"
    public static var fieldDefinitions: [FieldDefinition] = [("breachStatus", 6, "UInt8", 0, "0 if currently inside fence, 1 if outside"), ("breachCount", 4, "UInt16", 0, "number of fence breaches"), ("breachType", 7, "FenceBreach", 0, "last breach type (see FENCE_BREACH_* enum)"), ("breachTime", 0, "UInt32", 0, "time of last breach in milliseconds since boot")]

    public init(data: Data) throws {
		breachTime = try data.number(at: 0)
		breachCount = try data.number(at: 4)
		breachStatus = try data.number(at: 6)
		breachType = try data.enumeration(at: 7)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 8)
		try payload.set(breachTime, at: 0)
		try payload.set(breachCount, at: 4)
		try payload.set(breachStatus, at: 6)
		try payload.set(breachType, at: 7)
        return payload
    }
}
