//
//  AirspeedAutocalArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Airspeed auto-calibration
public struct AirspeedAutocal {

	/// GPS velocity north m/s
	public let vx: Float

	/// GPS velocity east m/s
	public let vy: Float

	/// GPS velocity down m/s
	public let vz: Float

	/// Differential pressure pascals
	public let diffPressure: Float

	/// Estimated to true airspeed ratio
	public let eas2tas: Float

	/// Airspeed ratio
	public let ratio: Float

	/// EKF state x
	public let stateX: Float

	/// EKF state y
	public let stateY: Float

	/// EKF state z
	public let stateZ: Float

	/// EKF Pax
	public let pax: Float

	/// EKF Pby
	public let pby: Float

	/// EKF Pcz
	public let pcz: Float
}

extension AirspeedAutocal: Message {
    public static let id = UInt8(174)
    public static var typeName = "AIRSPEED_AUTOCAL"
    public static var typeDescription = "Airspeed auto-calibration"
    public static var fieldDefinitions: [FieldDefinition] = [("vx", 0, "Float", 0, "GPS velocity north m/s"), ("vy", 4, "Float", 0, "GPS velocity east m/s"), ("vz", 8, "Float", 0, "GPS velocity down m/s"), ("diffPressure", 12, "Float", 0, "Differential pressure pascals"), ("eas2tas", 16, "Float", 0, "Estimated to true airspeed ratio"), ("ratio", 20, "Float", 0, "Airspeed ratio"), ("stateX", 24, "Float", 0, "EKF state x"), ("stateY", 28, "Float", 0, "EKF state y"), ("stateZ", 32, "Float", 0, "EKF state z"), ("pax", 36, "Float", 0, "EKF Pax"), ("pby", 40, "Float", 0, "EKF Pby"), ("pcz", 44, "Float", 0, "EKF Pcz")]

    public init(data: Data) throws {
		vx = try data.number(at: 0)
		vy = try data.number(at: 4)
		vz = try data.number(at: 8)
		diffPressure = try data.number(at: 12)
		eas2tas = try data.number(at: 16)
		ratio = try data.number(at: 20)
		stateX = try data.number(at: 24)
		stateY = try data.number(at: 28)
		stateZ = try data.number(at: 32)
		pax = try data.number(at: 36)
		pby = try data.number(at: 40)
		pcz = try data.number(at: 44)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 48)
		try payload.set(vx, at: 0)
		try payload.set(vy, at: 4)
		try payload.set(vz, at: 8)
		try payload.set(diffPressure, at: 12)
		try payload.set(eas2tas, at: 16)
		try payload.set(ratio, at: 20)
		try payload.set(stateX, at: 24)
		try payload.set(stateY, at: 28)
		try payload.set(stateZ, at: 32)
		try payload.set(pax, at: 36)
		try payload.set(pby, at: 40)
		try payload.set(pcz, at: 44)
        return payload
    }
}
