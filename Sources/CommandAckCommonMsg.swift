//
//  CommandAckCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Report status of a command. Includes feedback wether the command was executed.
public struct CommandAck {

	/// Command ID, as defined by MAV_CMD enum.
	public let command: MAVCmd

	/// See MAV_RESULT enum
	public let result: UInt8
}

extension CommandAck: Message {
    public static let id = UInt8(77)
    public static var typeName = "COMMAND_ACK"
    public static var typeDescription = "Report status of a command. Includes feedback wether the command was executed."
    public static var fieldDefinitions: [FieldDefinition] = [("command", 0, "MAVCmd", 0, "Command ID, as defined by MAV_CMD enum."), ("result", 2, "UInt8", 0, "See MAV_RESULT enum")]

    public init(data: Data) throws {
		command = try data.enumeration(at: 0)
		result = try data.number(at: 2)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 3)
		try payload.set(command, at: 0)
		try payload.set(result, at: 2)
        return payload
    }
}
