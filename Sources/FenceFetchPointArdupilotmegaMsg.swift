//
//  FenceFetchPointArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Request a current fence point from MAV
public struct FenceFetchPoint {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// point index (first point is 1, 0 is for return point)
	public let idx: UInt8
}

extension FenceFetchPoint: Message {
    public static let id = UInt8(161)
    public static var typeName = "FENCE_FETCH_POINT"
    public static var typeDescription = "Request a current fence point from MAV"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 0, "UInt8", 0, "System ID"), ("targetComponent", 1, "UInt8", 0, "Component ID"), ("idx", 2, "UInt8", 0, "point index (first point is 1, 0 is for return point)")]

    public init(data: Data) throws {
		targetSystem = try data.number(at: 0)
		targetComponent = try data.number(at: 1)
		idx = try data.number(at: 2)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 3)
		try payload.set(targetSystem, at: 0)
		try payload.set(targetComponent, at: 1)
		try payload.set(idx, at: 2)
        return payload
    }
}
