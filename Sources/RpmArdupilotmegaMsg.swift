//
//  RpmArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// RPM sensor output
public struct Rpm {

	/// RPM Sensor1
	public let rpm1: Float

	/// RPM Sensor2
	public let rpm2: Float
}

extension Rpm: Message {
    public static let id = UInt8(226)
    public static var typeName = "RPM"
    public static var typeDescription = "RPM sensor output"
    public static var fieldDefinitions: [FieldDefinition] = [("rpm1", 0, "Float", 0, "RPM Sensor1"), ("rpm2", 4, "Float", 0, "RPM Sensor2")]

    public init(data: Data) throws {
		rpm1 = try data.number(at: 0)
		rpm2 = try data.number(at: 4)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 8)
		try payload.set(rpm1, at: 0)
		try payload.set(rpm2, at: 4)
        return payload
    }
}
