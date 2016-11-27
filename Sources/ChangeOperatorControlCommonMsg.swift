//
//  ChangeOperatorControlCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Request to control this MAV
public struct ChangeOperatorControl {

	/// System the GCS requests control for
	public let targetSystem: UInt8

	/// 0: request control of this MAV, 1: Release control of this MAV
	public let controlRequest: UInt8

	/// 0: key as plaintext, 1-255: future, different hashing/encryption variants. The GCS should in general use the safest mode possible initially and then gradually move down the encryption level if it gets a NACK message indicating an encryption mismatch.
	public let version: UInt8

	/// Password / Key, depending on version plaintext or encrypted. 25 or less characters, NULL terminated. The characters may involve A-Z, a-z, 0-9, and "!?,.-"
	public let passkey: String
}

extension ChangeOperatorControl: Message {
    public static let id = UInt8(5)
    public static var typeName = "CHANGE_OPERATOR_CONTROL"
    public static var typeDescription = "Request to control this MAV"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 0, "UInt8", 0, "System the GCS requests control for"), ("controlRequest", 1, "UInt8", 0, "0: request control of this MAV, 1: Release control of this MAV"), ("version", 2, "UInt8", 0, "0: key as plaintext, 1-255: future, different hashing/encryption variants. The GCS should in general use the safest mode possible initially and then gradually move down the encryption level if it gets a NACK message indicating an encryption mismatch."), ("passkey", 3, "String", 25, "Password / Key, depending on version plaintext or encrypted. 25 or less characters, NULL terminated. The characters may involve A-Z, a-z, 0-9, and \"!?,.-\"")]

    public init(data: Data) throws {
		targetSystem = try data.number(at: 0)
		controlRequest = try data.number(at: 1)
		version = try data.number(at: 2)
		passkey = try data.string(at: 3, length: 25)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 28)
		try payload.set(targetSystem, at: 0)
		try payload.set(controlRequest, at: 1)
		try payload.set(version, at: 2)
		try payload.set(passkey, at: 3, length: 25)
        return payload
    }
}
