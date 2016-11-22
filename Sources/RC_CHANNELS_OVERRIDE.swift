//
//  RC_CHANNELS_OVERRIDE.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The RAW values of the RC channels sent to the MAV to override info received from the RC radio. A value of UINT16_MAX means no change to that channel. A value of 0 means control of that channel should be released back to the RC radio. The standard PPM modulation is as follows: 1000 microseconds: 0%, 2000 microseconds: 100%. Individual receivers/transmitters might violate this specification.
public struct RCChannelsOverride {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// RC channel 1 value, in microseconds. A value of UINT16_MAX means to ignore this field.
	public let chan1Raw: UInt16

	/// RC channel 2 value, in microseconds. A value of UINT16_MAX means to ignore this field.
	public let chan2Raw: UInt16

	/// RC channel 3 value, in microseconds. A value of UINT16_MAX means to ignore this field.
	public let chan3Raw: UInt16

	/// RC channel 4 value, in microseconds. A value of UINT16_MAX means to ignore this field.
	public let chan4Raw: UInt16

	/// RC channel 5 value, in microseconds. A value of UINT16_MAX means to ignore this field.
	public let chan5Raw: UInt16

	/// RC channel 6 value, in microseconds. A value of UINT16_MAX means to ignore this field.
	public let chan6Raw: UInt16

	/// RC channel 7 value, in microseconds. A value of UINT16_MAX means to ignore this field.
	public let chan7Raw: UInt16

	/// RC channel 8 value, in microseconds. A value of UINT16_MAX means to ignore this field.
	public let chan8Raw: UInt16
}

extension RCChannelsOverride: Message {
    public static let id = UInt8(70)
    public static var typeName = "RC_CHANNELS_OVERRIDE"
    public static var typeDescription = "The RAW values of the RC channels sent to the MAV to override info received from the RC radio. A value of UINT16_MAX means no change to that channel. A value of 0 means control of that channel should be released back to the RC radio. The standard PPM modulation is as follows: 1000 microseconds: 0%, 2000 microseconds: 100%. Individual receivers/transmitters might violate this specification."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 16, "UInt8", 0, "System ID"), ("targetComponent", 17, "UInt8", 0, "Component ID"), ("chan1Raw", 0, "UInt16", 0, "RC channel 1 value, in microseconds. A value of UINT16_MAX means to ignore this field."), ("chan2Raw", 2, "UInt16", 0, "RC channel 2 value, in microseconds. A value of UINT16_MAX means to ignore this field."), ("chan3Raw", 4, "UInt16", 0, "RC channel 3 value, in microseconds. A value of UINT16_MAX means to ignore this field."), ("chan4Raw", 6, "UInt16", 0, "RC channel 4 value, in microseconds. A value of UINT16_MAX means to ignore this field."), ("chan5Raw", 8, "UInt16", 0, "RC channel 5 value, in microseconds. A value of UINT16_MAX means to ignore this field."), ("chan6Raw", 10, "UInt16", 0, "RC channel 6 value, in microseconds. A value of UINT16_MAX means to ignore this field."), ("chan7Raw", 12, "UInt16", 0, "RC channel 7 value, in microseconds. A value of UINT16_MAX means to ignore this field."), ("chan8Raw", 14, "UInt16", 0, "RC channel 8 value, in microseconds. A value of UINT16_MAX means to ignore this field.")]

    public init(data: Data) throws {
		chan1Raw = try data.number(at: 0)
		chan2Raw = try data.number(at: 2)
		chan3Raw = try data.number(at: 4)
		chan4Raw = try data.number(at: 6)
		chan5Raw = try data.number(at: 8)
		chan6Raw = try data.number(at: 10)
		chan7Raw = try data.number(at: 12)
		chan8Raw = try data.number(at: 14)
		targetSystem = try data.number(at: 16)
		targetComponent = try data.number(at: 17)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 18)
		try payload.set(chan1Raw, at: 0)
		try payload.set(chan2Raw, at: 2)
		try payload.set(chan3Raw, at: 4)
		try payload.set(chan4Raw, at: 6)
		try payload.set(chan5Raw, at: 8)
		try payload.set(chan6Raw, at: 10)
		try payload.set(chan7Raw, at: 12)
		try payload.set(chan8Raw, at: 14)
		try payload.set(targetSystem, at: 16)
		try payload.set(targetComponent, at: 17)
        return payload
    }
}
