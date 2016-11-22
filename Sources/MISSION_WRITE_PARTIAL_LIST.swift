//
//  MISSION_WRITE_PARTIAL_LIST.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// This message is sent to the MAV to write a partial list. If start index == end index, only one item will be transmitted / updated. If the start index is NOT 0 and above the current list size, this request should be REJECTED!
public struct MissionWritePartialList {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Start index, 0 by default and smaller / equal to the largest index of the current onboard list.
	public let startIndex: Int16

	/// End index, equal or greater than start index.
	public let endIndex: Int16
}

extension MissionWritePartialList: Message {
    public static let id = UInt8(38)
    public static var typeName = "MISSION_WRITE_PARTIAL_LIST"
    public static var typeDescription = "This message is sent to the MAV to write a partial list. If start index == end index, only one item will be transmitted / updated. If the start index is NOT 0 and above the current list size, this request should be REJECTED!"
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 4, "UInt8", 0, "System ID"), ("targetComponent", 5, "UInt8", 0, "Component ID"), ("startIndex", 0, "Int16", 0, "Start index, 0 by default and smaller / equal to the largest index of the current onboard list."), ("endIndex", 2, "Int16", 0, "End index, equal or greater than start index.")]

    public init(data: Data) throws {
		startIndex = try data.number(at: 0)
		endIndex = try data.number(at: 2)
		targetSystem = try data.number(at: 4)
		targetComponent = try data.number(at: 5)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 6)
		try payload.set(startIndex, at: 0)
		try payload.set(endIndex, at: 2)
		try payload.set(targetSystem, at: 4)
		try payload.set(targetComponent, at: 5)
        return payload
    }
}
