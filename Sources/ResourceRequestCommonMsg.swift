//
//  ResourceRequestCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// The autopilot is requesting a resource (file, binary, other type of data)
public struct ResourceRequest {

	/// Request ID. This ID should be re-used when sending back URI contents
	public let requestId: UInt8

	/// The type of requested URI. 0 = a file via URL. 1 = a UAVCAN binary
	public let uriType: UInt8

	/// The requested unique resource identifier (URI). It is not necessarily a straight domain name (depends on the URI type enum)
	public let uri: [UInt8]

	/// The way the autopilot wants to receive the URI. 0 = MAVLink FTP. 1 = binary stream.
	public let transferType: UInt8

	/// The storage path the autopilot wants the URI to be stored in. Will only be valid if the transfer_type has a storage associated (e.g. MAVLink FTP).
	public let storage: [UInt8]
}

extension ResourceRequest: Message {
    public static let id = UInt8(142)
    public static var typeName = "RESOURCE_REQUEST"
    public static var typeDescription = "The autopilot is requesting a resource (file, binary, other type of data)"
    public static var fieldDefinitions: [FieldDefinition] = [("requestId", 0, "UInt8", 0, "Request ID. This ID should be re-used when sending back URI contents"), ("uriType", 1, "UInt8", 0, "The type of requested URI. 0 = a file via URL. 1 = a UAVCAN binary"), ("uri", 2, "[UInt8]", 120, "The requested unique resource identifier (URI). It is not necessarily a straight domain name (depends on the URI type enum)"), ("transferType", 122, "UInt8", 0, "The way the autopilot wants to receive the URI. 0 = MAVLink FTP. 1 = binary stream."), ("storage", 123, "[UInt8]", 120, "The storage path the autopilot wants the URI to be stored in. Will only be valid if the transfer_type has a storage associated (e.g. MAVLink FTP).")]

    public init(data: Data) throws {
		requestId = try data.number(at: 0)
		uriType = try data.number(at: 1)
		uri = try data.array(at: 2, capacity: 120)
		transferType = try data.number(at: 122)
		storage = try data.array(at: 123, capacity: 120)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 243)
		try payload.set(requestId, at: 0)
		try payload.set(uriType, at: 1)
		try payload.set(uri, at: 2, capacity: 120)
		try payload.set(transferType, at: 122)
		try payload.set(storage, at: 123, capacity: 120)
        return payload
    }
}
