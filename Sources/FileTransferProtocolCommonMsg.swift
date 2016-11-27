//
//  FileTransferProtocolCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// File transfer message
public struct FileTransferProtocol {

	/// Network ID (0 for broadcast)
	public let targetNetwork: UInt8

	/// System ID (0 for broadcast)
	public let targetSystem: UInt8

	/// Component ID (0 for broadcast)
	public let targetComponent: UInt8

	/// Variable length payload. The length is defined by the remaining message length when subtracting the header and other fields. The entire content of this block is opaque unless you understand any the encoding message_type. The particular encoding used can be extension specific and might not always be documented as part of the mavlink specification.
	public let payload: [UInt8]
}

extension FileTransferProtocol: Message {
    public static let id = UInt8(110)
    public static var typeName = "FILE_TRANSFER_PROTOCOL"
    public static var typeDescription = "File transfer message"
    public static var fieldDefinitions: [FieldDefinition] = [("targetNetwork", 0, "UInt8", 0, "Network ID (0 for broadcast)"), ("targetSystem", 1, "UInt8", 0, "System ID (0 for broadcast)"), ("targetComponent", 2, "UInt8", 0, "Component ID (0 for broadcast)"), ("payload", 3, "[UInt8]", 251, "Variable length payload. The length is defined by the remaining message length when subtracting the header and other fields. The entire content of this block is opaque unless you understand any the encoding message_type. The particular encoding used can be extension specific and might not always be documented as part of the mavlink specification.")]

    public init(data: Data) throws {
		targetNetwork = try data.number(at: 0)
		targetSystem = try data.number(at: 1)
		targetComponent = try data.number(at: 2)
		payload = try data.array(at: 3, capacity: 251)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 254)
		try payload.set(targetNetwork, at: 0)
		try payload.set(targetSystem, at: 1)
		try payload.set(targetComponent, at: 2)
		try payload.set(self.payload, at: 3, capacity: 251)
        return payload
    }
}
