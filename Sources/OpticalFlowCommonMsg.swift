//
//  OpticalFlowCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Optical flow from a flow sensor (e.g. optical mouse sensor)
public struct OpticalFlow {

	/// Timestamp (UNIX)
	public let timeUsec: UInt64

	/// Sensor ID
	public let sensorId: UInt8

	/// Flow in pixels * 10 in x-sensor direction (dezi-pixels)
	public let flowX: Int16

	/// Flow in pixels * 10 in y-sensor direction (dezi-pixels)
	public let flowY: Int16

	/// Flow in meters in x-sensor direction, angular-speed compensated
	public let flowCompMX: Float

	/// Flow in meters in y-sensor direction, angular-speed compensated
	public let flowCompMY: Float

	/// Optical flow quality / confidence. 0: bad, 255: maximum quality
	public let quality: UInt8

	/// Ground distance in meters. Positive value: distance known. Negative value: Unknown distance
	public let groundDistance: Float
}

extension OpticalFlow: Message {
    public static let id = UInt8(100)
    public static var typeName = "OPTICAL_FLOW"
    public static var typeDescription = "Optical flow from a flow sensor (e.g. optical mouse sensor)"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (UNIX)"), ("sensorId", 24, "UInt8", 0, "Sensor ID"), ("flowX", 20, "Int16", 0, "Flow in pixels * 10 in x-sensor direction (dezi-pixels)"), ("flowY", 22, "Int16", 0, "Flow in pixels * 10 in y-sensor direction (dezi-pixels)"), ("flowCompMX", 8, "Float", 0, "Flow in meters in x-sensor direction, angular-speed compensated"), ("flowCompMY", 12, "Float", 0, "Flow in meters in y-sensor direction, angular-speed compensated"), ("quality", 25, "UInt8", 0, "Optical flow quality / confidence. 0: bad, 255: maximum quality"), ("groundDistance", 16, "Float", 0, "Ground distance in meters. Positive value: distance known. Negative value: Unknown distance")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		flowCompMX = try data.number(at: 8)
		flowCompMY = try data.number(at: 12)
		groundDistance = try data.number(at: 16)
		flowX = try data.number(at: 20)
		flowY = try data.number(at: 22)
		sensorId = try data.number(at: 24)
		quality = try data.number(at: 25)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 26)
		try payload.set(timeUsec, at: 0)
		try payload.set(flowCompMX, at: 8)
		try payload.set(flowCompMY, at: 12)
		try payload.set(groundDistance, at: 16)
		try payload.set(flowX, at: 20)
		try payload.set(flowY, at: 22)
		try payload.set(sensorId, at: 24)
		try payload.set(quality, at: 25)
        return payload
    }
}
