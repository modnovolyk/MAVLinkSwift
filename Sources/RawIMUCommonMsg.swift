//
//  RawIMUCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The RAW IMU readings for the usual 9DOF sensor setup. This message should always contain the true raw values without any scaling to allow data capture and system debugging.
public struct RawIMU {

	/// Timestamp (microseconds since UNIX epoch or microseconds since system boot)
	public let timeUsec: UInt64

	/// X acceleration (raw)
	public let xacc: Int16

	/// Y acceleration (raw)
	public let yacc: Int16

	/// Z acceleration (raw)
	public let zacc: Int16

	/// Angular speed around X axis (raw)
	public let xgyro: Int16

	/// Angular speed around Y axis (raw)
	public let ygyro: Int16

	/// Angular speed around Z axis (raw)
	public let zgyro: Int16

	/// X Magnetic field (raw)
	public let xmag: Int16

	/// Y Magnetic field (raw)
	public let ymag: Int16

	/// Z Magnetic field (raw)
	public let zmag: Int16
}

extension RawIMU: Message {
    public static let id = UInt8(27)
    public static var typeName = "RAW_IMU"
    public static var typeDescription = "The RAW IMU readings for the usual 9DOF sensor setup. This message should always contain the true raw values without any scaling to allow data capture and system debugging."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (microseconds since UNIX epoch or microseconds since system boot)"), ("xacc", 8, "Int16", 0, "X acceleration (raw)"), ("yacc", 10, "Int16", 0, "Y acceleration (raw)"), ("zacc", 12, "Int16", 0, "Z acceleration (raw)"), ("xgyro", 14, "Int16", 0, "Angular speed around X axis (raw)"), ("ygyro", 16, "Int16", 0, "Angular speed around Y axis (raw)"), ("zgyro", 18, "Int16", 0, "Angular speed around Z axis (raw)"), ("xmag", 20, "Int16", 0, "X Magnetic field (raw)"), ("ymag", 22, "Int16", 0, "Y Magnetic field (raw)"), ("zmag", 24, "Int16", 0, "Z Magnetic field (raw)")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		xacc = try data.number(at: 8)
		yacc = try data.number(at: 10)
		zacc = try data.number(at: 12)
		xgyro = try data.number(at: 14)
		ygyro = try data.number(at: 16)
		zgyro = try data.number(at: 18)
		xmag = try data.number(at: 20)
		ymag = try data.number(at: 22)
		zmag = try data.number(at: 24)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 26)
		try payload.set(timeUsec, at: 0)
		try payload.set(xacc, at: 8)
		try payload.set(yacc, at: 10)
		try payload.set(zacc, at: 12)
		try payload.set(xgyro, at: 14)
		try payload.set(ygyro, at: 16)
		try payload.set(zgyro, at: 18)
		try payload.set(xmag, at: 20)
		try payload.set(ymag, at: 22)
		try payload.set(zmag, at: 24)
        return payload
    }
}
