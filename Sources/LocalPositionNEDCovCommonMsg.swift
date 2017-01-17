//
//  LocalPositionNEDCovCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The filtered local position (e.g. fused computer vision and accelerometers). Coordinate frame is right-handed, Z-axis down (aeronautical frame, NED / north-east-down convention)
public struct LocalPositionNEDCov {

	/// Timestamp (milliseconds since system boot). 0 for system without monotonic timestamp
	public let timeBootMs: UInt32

	/// Timestamp (microseconds since UNIX epoch) in UTC. 0 for unknown. Commonly filled by the precision time source of a GPS receiver.
	public let timeUtc: UInt64

	/// Class id of the estimator this estimate originated from.
	public let estimatorType: MAVEstimatorType

	/// X Position
	public let x: Float

	/// Y Position
	public let y: Float

	/// Z Position
	public let z: Float

	/// X Speed (m/s)
	public let vx: Float

	/// Y Speed (m/s)
	public let vy: Float

	/// Z Speed (m/s)
	public let vz: Float

	/// X Acceleration (m/s^2)
	public let ax: Float

	/// Y Acceleration (m/s^2)
	public let ay: Float

	/// Z Acceleration (m/s^2)
	public let az: Float

	/// Covariance matrix upper right triangular (first nine entries are the first ROW, next eight entries are the second row, etc.)
	public let covariance: [Float]
}

extension LocalPositionNEDCov: Message {
    public static let id = UInt8(64)
    public static var typeName = "LOCAL_POSITION_NED_COV"
    public static var typeDescription = "The filtered local position (e.g. fused computer vision and accelerometers). Coordinate frame is right-handed, Z-axis down (aeronautical frame, NED / north-east-down convention)"
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 8, "UInt32", 0, "Timestamp (milliseconds since system boot). 0 for system without monotonic timestamp"), ("timeUtc", 0, "UInt64", 0, "Timestamp (microseconds since UNIX epoch) in UTC. 0 for unknown. Commonly filled by the precision time source of a GPS receiver."), ("estimatorType", 228, "MAVEstimatorType", 0, "Class id of the estimator this estimate originated from."), ("x", 12, "Float", 0, "X Position"), ("y", 16, "Float", 0, "Y Position"), ("z", 20, "Float", 0, "Z Position"), ("vx", 24, "Float", 0, "X Speed (m/s)"), ("vy", 28, "Float", 0, "Y Speed (m/s)"), ("vz", 32, "Float", 0, "Z Speed (m/s)"), ("ax", 36, "Float", 0, "X Acceleration (m/s^2)"), ("ay", 40, "Float", 0, "Y Acceleration (m/s^2)"), ("az", 44, "Float", 0, "Z Acceleration (m/s^2)"), ("covariance", 48, "[Float]", 45, "Covariance matrix upper right triangular (first nine entries are the first ROW, next eight entries are the second row, etc.)")]

    public init(data: Data) throws {
		timeUtc = try data.number(at: 0)
		timeBootMs = try data.number(at: 8)
		x = try data.number(at: 12)
		y = try data.number(at: 16)
		z = try data.number(at: 20)
		vx = try data.number(at: 24)
		vy = try data.number(at: 28)
		vz = try data.number(at: 32)
		ax = try data.number(at: 36)
		ay = try data.number(at: 40)
		az = try data.number(at: 44)
		covariance = try data.array(at: 48, capacity: 45)
		estimatorType = try data.enumeration(at: 228)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 229)
		try payload.set(timeUtc, at: 0)
		try payload.set(timeBootMs, at: 8)
		try payload.set(x, at: 12)
		try payload.set(y, at: 16)
		try payload.set(z, at: 20)
		try payload.set(vx, at: 24)
		try payload.set(vy, at: 28)
		try payload.set(vz, at: 32)
		try payload.set(ax, at: 36)
		try payload.set(ay, at: 40)
		try payload.set(az, at: 44)
		try payload.set(covariance, at: 48, capacity: 45)
		try payload.set(estimatorType, at: 228)
        return payload
    }
}
