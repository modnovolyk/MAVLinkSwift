//
//  CollisionCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Information about a potential collision
public struct Collision {

	/// Collision data source
	public let src: MAVCollisionSrc

	/// Unique identifier, domain based on src field
	public let id: UInt32

	/// Action that is being taken to avoid this collision
	public let action: MAVCollisionAction

	/// How concerned the aircraft is about this collision
	public let threatLevel: MAVCollisionThreatLevel

	/// Estimated time until collision occurs (seconds)
	public let timeToMinimumDelta: Float

	/// Closest vertical distance in meters between vehicle and object
	public let altitudeMinimumDelta: Float

	/// Closest horizontal distance in meteres between vehicle and object
	public let horizontalMinimumDelta: Float
}

extension Collision: Message {
    public static let id = UInt8(247)
    public static var typeName = "COLLISION"
    public static var typeDescription = "Information about a potential collision"
    public static var fieldDefinitions: [FieldDefinition] = [("src", 16, "MAVCollisionSrc", 0, "Collision data source"), ("id", 0, "UInt32", 0, "Unique identifier, domain based on src field"), ("action", 17, "MAVCollisionAction", 0, "Action that is being taken to avoid this collision"), ("threatLevel", 18, "MAVCollisionThreatLevel", 0, "How concerned the aircraft is about this collision"), ("timeToMinimumDelta", 4, "Float", 0, "Estimated time until collision occurs (seconds)"), ("altitudeMinimumDelta", 8, "Float", 0, "Closest vertical distance in meters between vehicle and object"), ("horizontalMinimumDelta", 12, "Float", 0, "Closest horizontal distance in meteres between vehicle and object")]

    public init(data: Data) throws {
		id = try data.number(at: 0)
		timeToMinimumDelta = try data.number(at: 4)
		altitudeMinimumDelta = try data.number(at: 8)
		horizontalMinimumDelta = try data.number(at: 12)
		src = try data.enumeration(at: 16)
		action = try data.enumeration(at: 17)
		threatLevel = try data.enumeration(at: 18)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 19)
		try payload.set(id, at: 0)
		try payload.set(timeToMinimumDelta, at: 4)
		try payload.set(altitudeMinimumDelta, at: 8)
		try payload.set(horizontalMinimumDelta, at: 12)
		try payload.set(src, at: 16)
		try payload.set(action, at: 17)
		try payload.set(threatLevel, at: 18)
        return payload
    }
}
