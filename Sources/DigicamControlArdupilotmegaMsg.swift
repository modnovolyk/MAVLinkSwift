//
//  DigicamControlArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Control on-board Camera Control System to take shots.
public struct DigicamControl {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// 0: stop, 1: start or keep it up //Session control e.g. show/hide lens
	public let session: UInt8

	/// 1 to N //Zoom's absolute position (0 means ignore)
	public let zoomPos: UInt8

	/// -100 to 100 //Zooming step value to offset zoom from the current position
	public let zoomStep: Int8

	/// 0: unlock focus or keep unlocked, 1: lock focus or keep locked, 3: re-lock focus
	public let focusLock: UInt8

	/// 0: ignore, 1: shot or start filming
	public let shot: UInt8

	/// Command Identity (incremental loop: 0 to 255)//A command sent multiple times will be executed or pooled just once
	public let commandId: UInt8

	/// Extra parameters enumeration (0 means ignore)
	public let extraParam: UInt8

	/// Correspondent value to given extra_param
	public let extraValue: Float
}

extension DigicamControl: Message {
    public static let id = UInt8(155)
    public static var typeName = "DIGICAM_CONTROL"
    public static var typeDescription = "Control on-board Camera Control System to take shots."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 4, "UInt8", 0, "System ID"), ("targetComponent", 5, "UInt8", 0, "Component ID"), ("session", 6, "UInt8", 0, "0: stop, 1: start or keep it up //Session control e.g. show/hide lens"), ("zoomPos", 7, "UInt8", 0, "1 to N //Zoom's absolute position (0 means ignore)"), ("zoomStep", 8, "Int8", 0, "-100 to 100 //Zooming step value to offset zoom from the current position"), ("focusLock", 9, "UInt8", 0, "0: unlock focus or keep unlocked, 1: lock focus or keep locked, 3: re-lock focus"), ("shot", 10, "UInt8", 0, "0: ignore, 1: shot or start filming"), ("commandId", 11, "UInt8", 0, "Command Identity (incremental loop: 0 to 255)//A command sent multiple times will be executed or pooled just once"), ("extraParam", 12, "UInt8", 0, "Extra parameters enumeration (0 means ignore)"), ("extraValue", 0, "Float", 0, "Correspondent value to given extra_param")]

    public init(data: Data) throws {
		extraValue = try data.number(at: 0)
		targetSystem = try data.number(at: 4)
		targetComponent = try data.number(at: 5)
		session = try data.number(at: 6)
		zoomPos = try data.number(at: 7)
		zoomStep = try data.number(at: 8)
		focusLock = try data.number(at: 9)
		shot = try data.number(at: 10)
		commandId = try data.number(at: 11)
		extraParam = try data.number(at: 12)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 13)
		try payload.set(extraValue, at: 0)
		try payload.set(targetSystem, at: 4)
		try payload.set(targetComponent, at: 5)
		try payload.set(session, at: 6)
		try payload.set(zoomPos, at: 7)
		try payload.set(zoomStep, at: 8)
		try payload.set(focusLock, at: 9)
		try payload.set(shot, at: 10)
		try payload.set(commandId, at: 11)
		try payload.set(extraParam, at: 12)
        return payload
    }
}
