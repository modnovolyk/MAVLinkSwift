//
//  NavControllerOutputCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The state of the fixed wing navigation and position controller.
public struct NavControllerOutput {

	/// Current desired roll in degrees
	public let navRoll: Float

	/// Current desired pitch in degrees
	public let navPitch: Float

	/// Current desired heading in degrees
	public let navBearing: Int16

	/// Bearing to current MISSION/target in degrees
	public let targetBearing: Int16

	/// Distance to active MISSION in meters
	public let wpDist: UInt16

	/// Current altitude error in meters
	public let altError: Float

	/// Current airspeed error in meters/second
	public let aspdError: Float

	/// Current crosstrack error on x-y plane in meters
	public let xtrackError: Float
}

extension NavControllerOutput: Message {
    public static let id = UInt8(62)
    public static var typeName = "NAV_CONTROLLER_OUTPUT"
    public static var typeDescription = "The state of the fixed wing navigation and position controller."
    public static var fieldDefinitions: [FieldDefinition] = [("navRoll", 0, "Float", 0, "Current desired roll in degrees"), ("navPitch", 4, "Float", 0, "Current desired pitch in degrees"), ("navBearing", 20, "Int16", 0, "Current desired heading in degrees"), ("targetBearing", 22, "Int16", 0, "Bearing to current MISSION/target in degrees"), ("wpDist", 24, "UInt16", 0, "Distance to active MISSION in meters"), ("altError", 8, "Float", 0, "Current altitude error in meters"), ("aspdError", 12, "Float", 0, "Current airspeed error in meters/second"), ("xtrackError", 16, "Float", 0, "Current crosstrack error on x-y plane in meters")]

    public init(data: Data) throws {
		navRoll = try data.number(at: 0)
		navPitch = try data.number(at: 4)
		altError = try data.number(at: 8)
		aspdError = try data.number(at: 12)
		xtrackError = try data.number(at: 16)
		navBearing = try data.number(at: 20)
		targetBearing = try data.number(at: 22)
		wpDist = try data.number(at: 24)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 26)
		try payload.set(navRoll, at: 0)
		try payload.set(navPitch, at: 4)
		try payload.set(altError, at: 8)
		try payload.set(aspdError, at: 12)
		try payload.set(xtrackError, at: 16)
		try payload.set(navBearing, at: 20)
		try payload.set(targetBearing, at: 22)
		try payload.set(wpDist, at: 24)
        return payload
    }
}
