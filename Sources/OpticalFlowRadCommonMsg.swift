//
//  OpticalFlowRadCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Optical flow from an angular rate flow sensor (e.g. PX4FLOW or mouse sensor)
public struct OpticalFlowRad {

	/// Timestamp (microseconds, synced to UNIX time or since system boot)
	public let timeUsec: UInt64

	/// Sensor ID
	public let sensorId: UInt8

	/// Integration time in microseconds. Divide integrated_x and integrated_y by the integration time to obtain average flow. The integration time also indicates the.
	public let integrationTimeUs: UInt32

	/// Flow in radians around X axis (Sensor RH rotation about the X axis induces a positive flow. Sensor linear motion along the positive Y axis induces a negative flow.)
	public let integratedX: Float

	/// Flow in radians around Y axis (Sensor RH rotation about the Y axis induces a positive flow. Sensor linear motion along the positive X axis induces a positive flow.)
	public let integratedY: Float

	/// RH rotation around X axis (rad)
	public let integratedXgyro: Float

	/// RH rotation around Y axis (rad)
	public let integratedYgyro: Float

	/// RH rotation around Z axis (rad)
	public let integratedZgyro: Float

	/// Temperature * 100 in centi-degrees Celsius
	public let temperature: Int16

	/// Optical flow quality / confidence. 0: no valid flow, 255: maximum quality
	public let quality: UInt8

	/// Time in microseconds since the distance was sampled.
	public let timeDeltaDistanceUs: UInt32

	/// Distance to the center of the flow field in meters. Positive value (including zero): distance known. Negative value: Unknown distance.
	public let distance: Float
}

extension OpticalFlowRad: Message {
    public static let id = UInt8(106)
    public static var typeName = "OPTICAL_FLOW_RAD"
    public static var typeDescription = "Optical flow from an angular rate flow sensor (e.g. PX4FLOW or mouse sensor)"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (microseconds, synced to UNIX time or since system boot)"), ("sensorId", 42, "UInt8", 0, "Sensor ID"), ("integrationTimeUs", 8, "UInt32", 0, "Integration time in microseconds. Divide integrated_x and integrated_y by the integration time to obtain average flow. The integration time also indicates the."), ("integratedX", 12, "Float", 0, "Flow in radians around X axis (Sensor RH rotation about the X axis induces a positive flow. Sensor linear motion along the positive Y axis induces a negative flow.)"), ("integratedY", 16, "Float", 0, "Flow in radians around Y axis (Sensor RH rotation about the Y axis induces a positive flow. Sensor linear motion along the positive X axis induces a positive flow.)"), ("integratedXgyro", 20, "Float", 0, "RH rotation around X axis (rad)"), ("integratedYgyro", 24, "Float", 0, "RH rotation around Y axis (rad)"), ("integratedZgyro", 28, "Float", 0, "RH rotation around Z axis (rad)"), ("temperature", 40, "Int16", 0, "Temperature * 100 in centi-degrees Celsius"), ("quality", 43, "UInt8", 0, "Optical flow quality / confidence. 0: no valid flow, 255: maximum quality"), ("timeDeltaDistanceUs", 32, "UInt32", 0, "Time in microseconds since the distance was sampled."), ("distance", 36, "Float", 0, "Distance to the center of the flow field in meters. Positive value (including zero): distance known. Negative value: Unknown distance.")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		integrationTimeUs = try data.number(at: 8)
		integratedX = try data.number(at: 12)
		integratedY = try data.number(at: 16)
		integratedXgyro = try data.number(at: 20)
		integratedYgyro = try data.number(at: 24)
		integratedZgyro = try data.number(at: 28)
		timeDeltaDistanceUs = try data.number(at: 32)
		distance = try data.number(at: 36)
		temperature = try data.number(at: 40)
		sensorId = try data.number(at: 42)
		quality = try data.number(at: 43)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 44)
		try payload.set(timeUsec, at: 0)
		try payload.set(integrationTimeUs, at: 8)
		try payload.set(integratedX, at: 12)
		try payload.set(integratedY, at: 16)
		try payload.set(integratedXgyro, at: 20)
		try payload.set(integratedYgyro, at: 24)
		try payload.set(integratedZgyro, at: 28)
		try payload.set(timeDeltaDistanceUs, at: 32)
		try payload.set(distance, at: 36)
		try payload.set(temperature, at: 40)
		try payload.set(sensorId, at: 42)
		try payload.set(quality, at: 43)
        return payload
    }
}
