//
//  PidTuningArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// PID tuning information
public struct PidTuning {

	/// axis
	public let axis: PidTuningAxis

	/// desired rate (degrees/s)
	public let desired: Float

	/// achieved rate (degrees/s)
	public let achieved: Float

	/// FF component
	public let ff: Float

	/// P component
	public let p: Float

	/// I component
	public let i: Float

	/// D component
	public let d: Float
}

extension PidTuning: Message {
    public static let id = UInt8(194)
    public static var typeName = "PID_TUNING"
    public static var typeDescription = "PID tuning information"
    public static var fieldDefinitions: [FieldDefinition] = [("axis", 24, "PidTuningAxis", 0, "axis"), ("desired", 0, "Float", 0, "desired rate (degrees/s)"), ("achieved", 4, "Float", 0, "achieved rate (degrees/s)"), ("ff", 8, "Float", 0, "FF component"), ("p", 12, "Float", 0, "P component"), ("i", 16, "Float", 0, "I component"), ("d", 20, "Float", 0, "D component")]

    public init(data: Data) throws {
		desired = try data.number(at: 0)
		achieved = try data.number(at: 4)
		ff = try data.number(at: 8)
		p = try data.number(at: 12)
		i = try data.number(at: 16)
		d = try data.number(at: 20)
		axis = try data.enumeration(at: 24)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 25)
		try payload.set(desired, at: 0)
		try payload.set(achieved, at: 4)
		try payload.set(ff, at: 8)
		try payload.set(p, at: 12)
		try payload.set(i, at: 16)
		try payload.set(d, at: 20)
		try payload.set(axis, at: 24)
        return payload
    }
}
