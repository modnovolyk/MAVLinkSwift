//
//  RemoteLogDataBlockArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Send a block of log data to remote location
public struct RemoteLogDataBlock {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// log data block sequence number
	public let seqno: MAVRemoteLogDataBlockCommands

	/// log data block
	public let data: [UInt8]
}

extension RemoteLogDataBlock: Message {
    public static let id = UInt8(184)
    public static var typeName = "REMOTE_LOG_DATA_BLOCK"
    public static var typeDescription = "Send a block of log data to remote location"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 4, "UInt8", 0, "System ID"), ("targetComponent", 5, "UInt8", 0, "Component ID"), ("seqno", 0, "MAVRemoteLogDataBlockCommands", 0, "log data block sequence number"), ("data", 6, "[UInt8]", 200, "log data block")]

    public init(data: Data) throws {
		seqno = try data.enumeration(at: 0)
		targetSystem = try data.number(at: 4)
		targetComponent = try data.number(at: 5)
		self.data = try data.array(at: 6, capacity: 200)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 206)
		try payload.set(seqno, at: 0)
		try payload.set(targetSystem, at: 4)
		try payload.set(targetComponent, at: 5)
		try payload.set(data, at: 6, capacity: 200)
        return payload
    }
}
