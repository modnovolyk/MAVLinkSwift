//
//  Battery2ArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// 2nd Battery status
public struct Battery2 {

	/// voltage in millivolts
	public let voltage: UInt16

	/// Battery current, in 10*milliamperes (1 = 10 milliampere), -1: autopilot does not measure the current
	public let currentBattery: Int16
}

extension Battery2: Message {
    public static let id = UInt8(181)
    public static var typeName = "BATTERY2"
    public static var typeDescription = "2nd Battery status"
    public static var fieldDefinitions: [FieldDefinition] = [("voltage", 0, "UInt16", 0, "voltage in millivolts"), ("currentBattery", 2, "Int16", 0, "Battery current, in 10*milliamperes (1 = 10 milliampere), -1: autopilot does not measure the current")]

    public init(data: Data) throws {
		voltage = try data.number(at: 0)
		currentBattery = try data.number(at: 2)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 4)
		try payload.set(voltage, at: 0)
		try payload.set(currentBattery, at: 2)
        return payload
    }
}
