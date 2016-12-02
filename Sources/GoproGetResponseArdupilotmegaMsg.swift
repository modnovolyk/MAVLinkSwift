//
//  GoproGetResponseArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Response from a GOPRO_COMMAND get request
public struct GoproGetResponse {

	/// Command ID
	public let cmdId: GoproCommand

	/// Status
	public let status: GoproRequestStatus

	/// Value
	public let value: [UInt8]
}

extension GoproGetResponse: Message {
    public static let id = UInt8(217)
    public static var typeName = "GOPRO_GET_RESPONSE"
    public static var typeDescription = "Response from a GOPRO_COMMAND get request"
    public static var fieldDefinitions: [FieldDefinition] = [("cmdId", 0, "GoproCommand", 0, "Command ID"), ("status", 1, "GoproRequestStatus", 0, "Status"), ("value", 2, "[UInt8]", 4, "Value")]

    public init(data: Data) throws {
		cmdId = try data.enumeration(at: 0)
		status = try data.enumeration(at: 1)
		value = try data.array(at: 2, capacity: 4)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 6)
		try payload.set(cmdId, at: 0)
		try payload.set(status, at: 1)
		try payload.set(value, at: 2, capacity: 4)
        return payload
    }
}
