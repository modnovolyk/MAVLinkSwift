//
//  MountStatusArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Message with some status from APM to GCS about camera or antenna mount
public struct MountStatus {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// pitch(deg*100)
	public let pointingA: Int32

	/// roll(deg*100)
	public let pointingB: Int32

	/// yaw(deg*100)
	public let pointingC: Int32
}

extension MountStatus: Message {
    public static let id = UInt8(158)
    public static var typeName = "MOUNT_STATUS"
    public static var typeDescription = "Message with some status from APM to GCS about camera or antenna mount"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 12, "UInt8", 0, "System ID"), ("targetComponent", 13, "UInt8", 0, "Component ID"), ("pointingA", 0, "Int32", 0, "pitch(deg*100)"), ("pointingB", 4, "Int32", 0, "roll(deg*100)"), ("pointingC", 8, "Int32", 0, "yaw(deg*100)")]

    public init(data: Data) throws {
		pointingA = try data.number(at: 0)
		pointingB = try data.number(at: 4)
		pointingC = try data.number(at: 8)
		targetSystem = try data.number(at: 12)
		targetComponent = try data.number(at: 13)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 14)
		try payload.set(pointingA, at: 0)
		try payload.set(pointingB, at: 4)
		try payload.set(pointingC, at: 8)
		try payload.set(targetSystem, at: 12)
		try payload.set(targetComponent, at: 13)
        return payload
    }
}
