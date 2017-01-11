//
//  CameraTriggerCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Camera-IMU triggering and synchronisation message.
public struct CameraTrigger {

	/// Timestamp for the image frame in microseconds
	public let timeUsec: UInt64

	/// Image frame sequence
	public let seq: UInt32
}

extension CameraTrigger: Message {
    public static let id = UInt8(112)
    public static var typeName = "CAMERA_TRIGGER"
    public static var typeDescription = "Camera-IMU triggering and synchronisation message."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp for the image frame in microseconds"), ("seq", 8, "UInt32", 0, "Image frame sequence")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		seq = try data.number(at: 8)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 12)
		try payload.set(timeUsec, at: 0)
		try payload.set(seq, at: 8)
        return payload
    }
}
