//
//  DataTransmissionHandshakeCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

public struct DataTransmissionHandshake {

	/// type of requested/acknowledged data (as defined in ENUM DATA_TYPES in mavlink/include/mavlink_types.h)
	public let type: UInt8

	/// total data size in bytes (set on ACK only)
	public let size: UInt32

	/// Width of a matrix or image
	public let width: UInt16

	/// Height of a matrix or image
	public let height: UInt16

	/// number of packets beeing sent (set on ACK only)
	public let packets: UInt16

	/// payload size per packet (normally 253 byte, see DATA field size in message ENCAPSULATED_DATA) (set on ACK only)
	public let payload: UInt8

	/// JPEG quality out of [1,100]
	public let jpgQuality: UInt8
}

extension DataTransmissionHandshake: Message {
    public static let id = UInt8(130)
    public static var typeName = "DATA_TRANSMISSION_HANDSHAKE"
    public static var typeDescription = ""
    public static var fieldDefinitions: [FieldDefinition] = [("type", 10, "UInt8", 0, "type of requested/acknowledged data (as defined in ENUM DATA_TYPES in mavlink/include/mavlink_types.h)"), ("size", 0, "UInt32", 0, "total data size in bytes (set on ACK only)"), ("width", 4, "UInt16", 0, "Width of a matrix or image"), ("height", 6, "UInt16", 0, "Height of a matrix or image"), ("packets", 8, "UInt16", 0, "number of packets beeing sent (set on ACK only)"), ("payload", 11, "UInt8", 0, "payload size per packet (normally 253 byte, see DATA field size in message ENCAPSULATED_DATA) (set on ACK only)"), ("jpgQuality", 12, "UInt8", 0, "JPEG quality out of [1,100]")]

    public init(data: Data) throws {
		size = try data.number(at: 0)
		width = try data.number(at: 4)
		height = try data.number(at: 6)
		packets = try data.number(at: 8)
		type = try data.number(at: 10)
		payload = try data.number(at: 11)
		jpgQuality = try data.number(at: 12)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 13)
		try payload.set(size, at: 0)
		try payload.set(width, at: 4)
		try payload.set(height, at: 6)
		try payload.set(packets, at: 8)
		try payload.set(type, at: 10)
		try payload.set(self.payload, at: 11)
		try payload.set(jpgQuality, at: 12)
        return payload
    }
}
