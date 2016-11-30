//
//  DebugVectCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

public struct DebugVect {

	/// Name
	public let name: String

	/// Timestamp
	public let timeUsec: UInt64

	/// x
	public let x: Float

	/// y
	public let y: Float

	/// z
	public let z: Float
}

extension DebugVect: Message {
    public static let id = UInt8(250)
    public static var typeName = "DEBUG_VECT"
    public static var typeDescription = ""
    public static var fieldDefinitions: [FieldDefinition] = [("name", 20, "String", 10, "Name"), ("timeUsec", 0, "UInt64", 0, "Timestamp"), ("x", 8, "Float", 0, "x"), ("y", 12, "Float", 0, "y"), ("z", 16, "Float", 0, "z")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		x = try data.number(at: 8)
		y = try data.number(at: 12)
		z = try data.number(at: 16)
		name = try data.string(at: 20, length: 10)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 30)
		try payload.set(timeUsec, at: 0)
		try payload.set(x, at: 8)
		try payload.set(y, at: 12)
		try payload.set(z, at: 16)
		try payload.set(name, at: 20, length: 10)
        return payload
    }
}
