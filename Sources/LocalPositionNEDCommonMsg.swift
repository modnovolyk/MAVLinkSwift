//
//  LocalPositionNEDCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The filtered local position (e.g. fused computer vision and accelerometers). Coordinate frame is right-handed, Z-axis down (aeronautical frame, NED / north-east-down convention)
public struct LocalPositionNED {

	/// Timestamp (milliseconds since system boot)
	public let timeBootMs: UInt32

	/// X Position
	public let x: Float

	/// Y Position
	public let y: Float

	/// Z Position
	public let z: Float

	/// X Speed
	public let vx: Float

	/// Y Speed
	public let vy: Float

	/// Z Speed
	public let vz: Float
}

extension LocalPositionNED: Message {
    public static let id = UInt8(32)
    public static var typeName = "LOCAL_POSITION_NED"
    public static var typeDescription = "The filtered local position (e.g. fused computer vision and accelerometers). Coordinate frame is right-handed, Z-axis down (aeronautical frame, NED / north-east-down convention)"
    public static var fieldDefinitions: [FieldDefinition] = [("timeBootMs", 0, "UInt32", 0, "Timestamp (milliseconds since system boot)"), ("x", 4, "Float", 0, "X Position"), ("y", 8, "Float", 0, "Y Position"), ("z", 12, "Float", 0, "Z Position"), ("vx", 16, "Float", 0, "X Speed"), ("vy", 20, "Float", 0, "Y Speed"), ("vz", 24, "Float", 0, "Z Speed")]

    public init(data: Data) throws {
		timeBootMs = try data.number(at: 0)
		x = try data.number(at: 4)
		y = try data.number(at: 8)
		z = try data.number(at: 12)
		vx = try data.number(at: 16)
		vy = try data.number(at: 20)
		vz = try data.number(at: 24)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 28)
		try payload.set(timeBootMs, at: 0)
		try payload.set(x, at: 4)
		try payload.set(y, at: 8)
		try payload.set(z, at: 12)
		try payload.set(vx, at: 16)
		try payload.set(vy, at: 20)
		try payload.set(vz, at: 24)
        return payload
    }
}
