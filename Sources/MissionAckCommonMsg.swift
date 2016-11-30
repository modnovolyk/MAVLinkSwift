//
//  MissionAckCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Ack message during MISSION handling. The type field states if this message is a positive ack (type=0) or if an error happened (type=non-zero).
public struct MissionAck {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// See MAV_MISSION_RESULT enum
	public let type: MAVMissionResult
}

extension MissionAck: Message {
    public static let id = UInt8(47)
    public static var typeName = "MISSION_ACK"
    public static var typeDescription = "Ack message during MISSION handling. The type field states if this message is a positive ack (type=0) or if an error happened (type=non-zero)."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 0, "UInt8", 0, "System ID"), ("targetComponent", 1, "UInt8", 0, "Component ID"), ("type", 2, "MAVMissionResult", 0, "See MAV_MISSION_RESULT enum")]

    public init(data: Data) throws {
		targetSystem = try data.number(at: 0)
		targetComponent = try data.number(at: 1)
		type = try data.enumeration(at: 2)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 3)
		try payload.set(targetSystem, at: 0)
		try payload.set(targetComponent, at: 1)
		try payload.set(type, at: 2)
        return payload
    }
}
