//
//  WindArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Wind estimation
public struct Wind {

	/// wind direction that wind is coming from (degrees)
	public let direction: Float

	/// wind speed in ground plane (m/s)
	public let speed: Float

	/// vertical wind speed (m/s)
	public let speedZ: Float
}

extension Wind: Message {
    public static let id = UInt8(168)
    public static var typeName = "WIND"
    public static var typeDescription = "Wind estimation"
    public static var fieldDefinitions: [FieldDefinition] = [("direction", 0, "Float", 0, "wind direction that wind is coming from (degrees)"), ("speed", 4, "Float", 0, "wind speed in ground plane (m/s)"), ("speedZ", 8, "Float", 0, "vertical wind speed (m/s)")]

    public init(data: Data) throws {
		direction = try data.number(at: 0)
		speed = try data.number(at: 4)
		speedZ = try data.number(at: 8)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 12)
		try payload.set(direction, at: 0)
		try payload.set(speed, at: 4)
		try payload.set(speedZ, at: 8)
        return payload
    }
}
