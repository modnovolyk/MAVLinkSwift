//
//  VibrationCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Vibration levels and accelerometer clipping
public struct Vibration {

	/// Timestamp (micros since boot or Unix epoch)
	public let timeUsec: UInt64

	/// Vibration levels on X-axis
	public let vibrationX: Float

	/// Vibration levels on Y-axis
	public let vibrationY: Float

	/// Vibration levels on Z-axis
	public let vibrationZ: Float

	/// first accelerometer clipping count
	public let clipping0: UInt32

	/// second accelerometer clipping count
	public let clipping1: UInt32

	/// third accelerometer clipping count
	public let clipping2: UInt32
}

extension Vibration: Message {
    public static let id = UInt8(241)
    public static var typeName = "VIBRATION"
    public static var typeDescription = "Vibration levels and accelerometer clipping"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (micros since boot or Unix epoch)"), ("vibrationX", 8, "Float", 0, "Vibration levels on X-axis"), ("vibrationY", 12, "Float", 0, "Vibration levels on Y-axis"), ("vibrationZ", 16, "Float", 0, "Vibration levels on Z-axis"), ("clipping0", 20, "UInt32", 0, "first accelerometer clipping count"), ("clipping1", 24, "UInt32", 0, "second accelerometer clipping count"), ("clipping2", 28, "UInt32", 0, "third accelerometer clipping count")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		vibrationX = try data.number(at: 8)
		vibrationY = try data.number(at: 12)
		vibrationZ = try data.number(at: 16)
		clipping0 = try data.number(at: 20)
		clipping1 = try data.number(at: 24)
		clipping2 = try data.number(at: 28)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 32)
		try payload.set(timeUsec, at: 0)
		try payload.set(vibrationX, at: 8)
		try payload.set(vibrationY, at: 12)
		try payload.set(vibrationZ, at: 16)
		try payload.set(clipping0, at: 20)
		try payload.set(clipping1, at: 24)
		try payload.set(clipping2, at: 28)
        return payload
    }
}
