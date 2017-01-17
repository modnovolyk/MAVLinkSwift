//
//  GPSRtcmDataCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// WORK IN PROGRESS! RTCM message for injecting into the onboard GPS (used for DGPS)
public struct GPSRtcmData {

	/// LSB: 1 means message is fragmented
	public let flags: UInt8

	/// data length
	public let len: UInt8

	/// RTCM message (may be fragmented)
	public let data: [UInt8]
}

extension GPSRtcmData: Message {
    public static let id = UInt8(233)
    public static var typeName = "GPS_RTCM_DATA"
    public static var typeDescription = "WORK IN PROGRESS! RTCM message for injecting into the onboard GPS (used for DGPS)"
    public static var fieldDefinitions: [FieldDefinition] = [("flags", 0, "UInt8", 0, "LSB: 1 means message is fragmented"), ("len", 1, "UInt8", 0, "data length"), ("data", 2, "[UInt8]", 180, "RTCM message (may be fragmented)")]

    public init(data: Data) throws {
		flags = try data.number(at: 0)
		len = try data.number(at: 1)
		self.data = try data.array(at: 2, capacity: 180)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 182)
		try payload.set(flags, at: 0)
		try payload.set(len, at: 1)
		try payload.set(data, at: 2, capacity: 180)
        return payload
    }
}
