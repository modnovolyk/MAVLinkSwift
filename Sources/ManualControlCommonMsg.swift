//
//  ManualControlCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// This message provides an API for manually controlling the vehicle using standard joystick axes nomenclature, along with a joystick-like input device. Unused axes can be disabled an buttons are also transmit as boolean values of their
public struct ManualControl {

	/// The system to be controlled.
	public let target: UInt8

	/// X-axis, normalized to the range [-1000,1000]. A value of INT16_MAX indicates that this axis is invalid. Generally corresponds to forward(1000)-backward(-1000) movement on a joystick and the pitch of a vehicle.
	public let x: Int16

	/// Y-axis, normalized to the range [-1000,1000]. A value of INT16_MAX indicates that this axis is invalid. Generally corresponds to left(-1000)-right(1000) movement on a joystick and the roll of a vehicle.
	public let y: Int16

	/// Z-axis, normalized to the range [-1000,1000]. A value of INT16_MAX indicates that this axis is invalid. Generally corresponds to a separate slider movement with maximum being 1000 and minimum being -1000 on a joystick and the thrust of a vehicle. Positive values are positive thrust, negative values are negative thrust.
	public let z: Int16

	/// R-axis, normalized to the range [-1000,1000]. A value of INT16_MAX indicates that this axis is invalid. Generally corresponds to a twisting of the joystick, with counter-clockwise being 1000 and clockwise being -1000, and the yaw of a vehicle.
	public let r: Int16

	/// A bitfield corresponding to the joystick buttons' current state, 1 for pressed, 0 for released. The lowest bit corresponds to Button 1.
	public let buttons: UInt16
}

extension ManualControl: Message {
    public static let id = UInt8(69)
    public static var typeName = "MANUAL_CONTROL"
    public static var typeDescription = "This message provides an API for manually controlling the vehicle using standard joystick axes nomenclature, along with a joystick-like input device. Unused axes can be disabled an buttons are also transmit as boolean values of their"
    public static var fieldDefinitions: [FieldDefinition] = [("target", 10, "UInt8", 0, "The system to be controlled."), ("x", 0, "Int16", 0, "X-axis, normalized to the range [-1000,1000]. A value of INT16_MAX indicates that this axis is invalid. Generally corresponds to forward(1000)-backward(-1000) movement on a joystick and the pitch of a vehicle."), ("y", 2, "Int16", 0, "Y-axis, normalized to the range [-1000,1000]. A value of INT16_MAX indicates that this axis is invalid. Generally corresponds to left(-1000)-right(1000) movement on a joystick and the roll of a vehicle."), ("z", 4, "Int16", 0, "Z-axis, normalized to the range [-1000,1000]. A value of INT16_MAX indicates that this axis is invalid. Generally corresponds to a separate slider movement with maximum being 1000 and minimum being -1000 on a joystick and the thrust of a vehicle. Positive values are positive thrust, negative values are negative thrust."), ("r", 6, "Int16", 0, "R-axis, normalized to the range [-1000,1000]. A value of INT16_MAX indicates that this axis is invalid. Generally corresponds to a twisting of the joystick, with counter-clockwise being 1000 and clockwise being -1000, and the yaw of a vehicle."), ("buttons", 8, "UInt16", 0, "A bitfield corresponding to the joystick buttons' current state, 1 for pressed, 0 for released. The lowest bit corresponds to Button 1.")]

    public init(data: Data) throws {
		x = try data.number(at: 0)
		y = try data.number(at: 2)
		z = try data.number(at: 4)
		r = try data.number(at: 6)
		buttons = try data.number(at: 8)
		target = try data.number(at: 10)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 11)
		try payload.set(x, at: 0)
		try payload.set(y, at: 2)
		try payload.set(z, at: 4)
		try payload.set(r, at: 6)
		try payload.set(buttons, at: 8)
		try payload.set(target, at: 10)
        return payload
    }
}
