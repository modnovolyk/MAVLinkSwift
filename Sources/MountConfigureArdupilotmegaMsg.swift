//
//  MountConfigureArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Message to configure a camera mount, directional antenna, etc.
public struct MountConfigure {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// mount operating mode (see MAV_MOUNT_MODE enum)
	public let mountMode: MAVMountMode

	/// (1 = yes, 0 = no)
	public let stabRoll: UInt8

	/// (1 = yes, 0 = no)
	public let stabPitch: UInt8

	/// (1 = yes, 0 = no)
	public let stabYaw: UInt8
}

extension MountConfigure: Message {
    public static let id = UInt8(156)
    public static var typeName = "MOUNT_CONFIGURE"
    public static var typeDescription = "Message to configure a camera mount, directional antenna, etc."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 0, "UInt8", 0, "System ID"), ("targetComponent", 1, "UInt8", 0, "Component ID"), ("mountMode", 2, "MAVMountMode", 0, "mount operating mode (see MAV_MOUNT_MODE enum)"), ("stabRoll", 3, "UInt8", 0, "(1 = yes, 0 = no)"), ("stabPitch", 4, "UInt8", 0, "(1 = yes, 0 = no)"), ("stabYaw", 5, "UInt8", 0, "(1 = yes, 0 = no)")]

    public init(data: Data) throws {
		targetSystem = try data.number(at: 0)
		targetComponent = try data.number(at: 1)
		mountMode = try data.enumeration(at: 2)
		stabRoll = try data.number(at: 3)
		stabPitch = try data.number(at: 4)
		stabYaw = try data.number(at: 5)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 6)
		try payload.set(targetSystem, at: 0)
		try payload.set(targetComponent, at: 1)
		try payload.set(mountMode, at: 2)
		try payload.set(stabRoll, at: 3)
		try payload.set(stabPitch, at: 4)
		try payload.set(stabYaw, at: 5)
        return payload
    }
}
