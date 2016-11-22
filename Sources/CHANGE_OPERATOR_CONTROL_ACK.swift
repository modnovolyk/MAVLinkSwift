//
//  CHANGE_OPERATOR_CONTROL_ACK.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Accept / deny control of this MAV
public struct ChangeOperatorControlAck {

	/// ID of the GCS this message
	public let gcsSystemId: UInt8

	/// 0: request control of this MAV, 1: Release control of this MAV
	public let controlRequest: UInt8

	/// 0: ACK, 1: NACK: Wrong passkey, 2: NACK: Unsupported passkey encryption method, 3: NACK: Already under control
	public let ack: UInt8
}

extension ChangeOperatorControlAck: Message {
    public static let id = UInt8(6)
    public static var typeName = "CHANGE_OPERATOR_CONTROL_ACK"
    public static var typeDescription = "Accept / deny control of this MAV"
    public static var fieldDefinitions: [FieldDefinition] = [("gcsSystemId", 0, "UInt8", 0, "ID of the GCS this message"), ("controlRequest", 1, "UInt8", 0, "0: request control of this MAV, 1: Release control of this MAV"), ("ack", 2, "UInt8", 0, "0: ACK, 1: NACK: Wrong passkey, 2: NACK: Unsupported passkey encryption method, 3: NACK: Already under control")]

    public init(data: Data) throws {
		gcsSystemId = try data.number(at: 0)
		controlRequest = try data.number(at: 1)
		ack = try data.number(at: 2)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 3)
		try payload.set(gcsSystemId, at: 0)
		try payload.set(controlRequest, at: 1)
		try payload.set(ack, at: 2)
        return payload
    }
}
