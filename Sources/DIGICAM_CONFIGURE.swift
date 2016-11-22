//
//  DIGICAM_CONFIGURE.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Configure on-board Camera Control System.
public struct DigicamConfigure {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Mode enumeration from 1 to N //P, TV, AV, M, Etc (0 means ignore)
	public let mode: UInt8

	/// Divisor number //e.g. 1000 means 1/1000 (0 means ignore)
	public let shutterSpeed: UInt16

	/// F stop number x 10 //e.g. 28 means 2.8 (0 means ignore)
	public let aperture: UInt8

	/// ISO enumeration from 1 to N //e.g. 80, 100, 200, Etc (0 means ignore)
	public let iso: UInt8

	/// Exposure type enumeration from 1 to N (0 means ignore)
	public let exposureType: UInt8

	/// Command Identity (incremental loop: 0 to 255)//A command sent multiple times will be executed or pooled just once
	public let commandId: UInt8

	/// Main engine cut-off time before camera trigger in seconds/10 (0 means no cut-off)
	public let engineCutOff: UInt8

	/// Extra parameters enumeration (0 means ignore)
	public let extraParam: UInt8

	/// Correspondent value to given extra_param
	public let extraValue: Float
}

extension DigicamConfigure: Message {
    public static let id = UInt8(154)
    public static var typeName = "DIGICAM_CONFIGURE"
    public static var typeDescription = "Configure on-board Camera Control System."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 6, "UInt8", 0, "System ID"), ("targetComponent", 7, "UInt8", 0, "Component ID"), ("mode", 8, "UInt8", 0, "Mode enumeration from 1 to N //P, TV, AV, M, Etc (0 means ignore)"), ("shutterSpeed", 4, "UInt16", 0, "Divisor number //e.g. 1000 means 1/1000 (0 means ignore)"), ("aperture", 9, "UInt8", 0, "F stop number x 10 //e.g. 28 means 2.8 (0 means ignore)"), ("iso", 10, "UInt8", 0, "ISO enumeration from 1 to N //e.g. 80, 100, 200, Etc (0 means ignore)"), ("exposureType", 11, "UInt8", 0, "Exposure type enumeration from 1 to N (0 means ignore)"), ("commandId", 12, "UInt8", 0, "Command Identity (incremental loop: 0 to 255)//A command sent multiple times will be executed or pooled just once"), ("engineCutOff", 13, "UInt8", 0, "Main engine cut-off time before camera trigger in seconds/10 (0 means no cut-off)"), ("extraParam", 14, "UInt8", 0, "Extra parameters enumeration (0 means ignore)"), ("extraValue", 0, "Float", 0, "Correspondent value to given extra_param")]

    public init(data: Data) throws {
		extraValue = try data.number(at: 0)
		shutterSpeed = try data.number(at: 4)
		targetSystem = try data.number(at: 6)
		targetComponent = try data.number(at: 7)
		mode = try data.number(at: 8)
		aperture = try data.number(at: 9)
		iso = try data.number(at: 10)
		exposureType = try data.number(at: 11)
		commandId = try data.number(at: 12)
		engineCutOff = try data.number(at: 13)
		extraParam = try data.number(at: 14)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 15)
		try payload.set(extraValue, at: 0)
		try payload.set(shutterSpeed, at: 4)
		try payload.set(targetSystem, at: 6)
		try payload.set(targetComponent, at: 7)
		try payload.set(mode, at: 8)
		try payload.set(aperture, at: 9)
		try payload.set(iso, at: 10)
		try payload.set(exposureType, at: 11)
		try payload.set(commandId, at: 12)
		try payload.set(engineCutOff, at: 13)
		try payload.set(extraParam, at: 14)
        return payload
    }
}
