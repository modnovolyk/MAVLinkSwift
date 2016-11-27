//
//  AuthKeyCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Emit an encrypted signature / key identifying this system. PLEASE NOTE: This protocol has been kept simple, so transmitting the key requires an encrypted channel for true safety.
public struct AuthKey {

	/// key
	public let key: String
}

extension AuthKey: Message {
    public static let id = UInt8(7)
    public static var typeName = "AUTH_KEY"
    public static var typeDescription = "Emit an encrypted signature / key identifying this system. PLEASE NOTE: This protocol has been kept simple, so transmitting the key requires an encrypted channel for true safety."
    public static var fieldDefinitions: [FieldDefinition] = [("key", 0, "String", 32, "key")]

    public init(data: Data) throws {
		key = try data.string(at: 0, length: 32)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 32)
		try payload.set(key, at: 0, length: 32)
        return payload
    }
}
