//
//  RemoteLogBlockStatusArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Send Status of each log block that autopilot board might have sent
public struct RemoteLogBlockStatus {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// log data block sequence number
	public let seqno: UInt32

	/// log data block status
	public let status: MAVRemoteLogDataBlockStatuses
}

extension RemoteLogBlockStatus: Message {
    public static let id = UInt8(185)
    public static var typeName = "REMOTE_LOG_BLOCK_STATUS"
    public static var typeDescription = "Send Status of each log block that autopilot board might have sent"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 4, "UInt8", 0, "System ID"), ("targetComponent", 5, "UInt8", 0, "Component ID"), ("seqno", 0, "UInt32", 0, "log data block sequence number"), ("status", 6, "MAVRemoteLogDataBlockStatuses", 0, "log data block status")]

    public init(data: Data) throws {
		seqno = try data.number(at: 0)
		targetSystem = try data.number(at: 4)
		targetComponent = try data.number(at: 5)
		status = try data.enumeration(at: 6)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 7)
		try payload.set(seqno, at: 0)
		try payload.set(targetSystem, at: 4)
		try payload.set(targetComponent, at: 5)
		try payload.set(status, at: 6)
        return payload
    }
}
