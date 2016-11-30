//
//  VfrHudCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Metrics typically displayed on a HUD for fixed wing aircraft
public struct VfrHud {

	/// Current airspeed in m/s
	public let airspeed: Float

	/// Current ground speed in m/s
	public let groundspeed: Float

	/// Current heading in degrees, in compass units (0..360, 0=north)
	public let heading: Int16

	/// Current throttle setting in integer percent, 0 to 100
	public let throttle: UInt16

	/// Current altitude (MSL), in meters
	public let alt: Float

	/// Current climb rate in meters/second
	public let climb: Float
}

extension VfrHud: Message {
    public static let id = UInt8(74)
    public static var typeName = "VFR_HUD"
    public static var typeDescription = "Metrics typically displayed on a HUD for fixed wing aircraft"
    public static var fieldDefinitions: [FieldDefinition] = [("airspeed", 0, "Float", 0, "Current airspeed in m/s"), ("groundspeed", 4, "Float", 0, "Current ground speed in m/s"), ("heading", 16, "Int16", 0, "Current heading in degrees, in compass units (0..360, 0=north)"), ("throttle", 18, "UInt16", 0, "Current throttle setting in integer percent, 0 to 100"), ("alt", 8, "Float", 0, "Current altitude (MSL), in meters"), ("climb", 12, "Float", 0, "Current climb rate in meters/second")]

    public init(data: Data) throws {
		airspeed = try data.number(at: 0)
		groundspeed = try data.number(at: 4)
		alt = try data.number(at: 8)
		climb = try data.number(at: 12)
		heading = try data.number(at: 16)
		throttle = try data.number(at: 18)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 20)
		try payload.set(airspeed, at: 0)
		try payload.set(groundspeed, at: 4)
		try payload.set(alt, at: 8)
		try payload.set(climb, at: 12)
		try payload.set(heading, at: 16)
		try payload.set(throttle, at: 18)
        return payload
    }
}
