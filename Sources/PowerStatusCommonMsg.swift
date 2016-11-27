//
//  PowerStatusCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Power supply status
public struct PowerStatus {

	/// 5V rail voltage in millivolts
	public let vcc: UInt16

	/// servo rail voltage in millivolts
	public let vservo: UInt16

	/// power supply status flags (see MAV_POWER_STATUS enum)
	public let flags: UInt16
}

extension PowerStatus: Message {
    public static let id = UInt8(125)
    public static var typeName = "POWER_STATUS"
    public static var typeDescription = "Power supply status"
    public static var fieldDefinitions: [FieldDefinition] = [("vcc", 0, "UInt16", 0, "5V rail voltage in millivolts"), ("vservo", 2, "UInt16", 0, "servo rail voltage in millivolts"), ("flags", 4, "UInt16", 0, "power supply status flags (see MAV_POWER_STATUS enum)")]

    public init(data: Data) throws {
		vcc = try data.number(at: 0)
		vservo = try data.number(at: 2)
		flags = try data.number(at: 4)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 6)
		try payload.set(vcc, at: 0)
		try payload.set(vservo, at: 2)
		try payload.set(flags, at: 4)
        return payload
    }
}
