//
//  SafetyAllowedAreaCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Read out the safety zone the MAV currently assumes.
public struct SafetyAllowedArea {

	/// Coordinate frame, as defined by MAV_FRAME enum in mavlink_types.h. Can be either global, GPS, right-handed with Z axis up or local, right handed, Z axis down.
	public let frame: MAVFrame

	/// x position 1 / Latitude 1
	public let p1x: Float

	/// y position 1 / Longitude 1
	public let p1y: Float

	/// z position 1 / Altitude 1
	public let p1z: Float

	/// x position 2 / Latitude 2
	public let p2x: Float

	/// y position 2 / Longitude 2
	public let p2y: Float

	/// z position 2 / Altitude 2
	public let p2z: Float
}

extension SafetyAllowedArea: Message {
    public static let id = UInt8(55)
    public static var typeName = "SAFETY_ALLOWED_AREA"
    public static var typeDescription = "Read out the safety zone the MAV currently assumes."
    public static var fieldDefinitions: [FieldDefinition] = [("frame", 24, "MAVFrame", 0, "Coordinate frame, as defined by MAV_FRAME enum in mavlink_types.h. Can be either global, GPS, right-handed with Z axis up or local, right handed, Z axis down."), ("p1x", 0, "Float", 0, "x position 1 / Latitude 1"), ("p1y", 4, "Float", 0, "y position 1 / Longitude 1"), ("p1z", 8, "Float", 0, "z position 1 / Altitude 1"), ("p2x", 12, "Float", 0, "x position 2 / Latitude 2"), ("p2y", 16, "Float", 0, "y position 2 / Longitude 2"), ("p2z", 20, "Float", 0, "z position 2 / Altitude 2")]

    public init(data: Data) throws {
		p1x = try data.number(at: 0)
		p1y = try data.number(at: 4)
		p1z = try data.number(at: 8)
		p2x = try data.number(at: 12)
		p2y = try data.number(at: 16)
		p2z = try data.number(at: 20)
		frame = try data.enumeration(at: 24)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 25)
		try payload.set(p1x, at: 0)
		try payload.set(p1y, at: 4)
		try payload.set(p1z, at: 8)
		try payload.set(p2x, at: 12)
		try payload.set(p2y, at: 16)
		try payload.set(p2z, at: 20)
		try payload.set(frame, at: 24)
        return payload
    }
}
