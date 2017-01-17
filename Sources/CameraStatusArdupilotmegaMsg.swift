//
//  CameraStatusArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Camera Event
public struct CameraStatus {

	/// Image timestamp (microseconds since UNIX epoch, according to camera clock)
	public let timeUsec: UInt64

	/// System ID
	public let targetSystem: UInt8

	/// Camera ID
	public let camIdx: UInt8

	/// Image index
	public let imgIdx: UInt16

	/// See CAMERA_STATUS_TYPES enum for definition of the bitmask
	public let eventId: UInt8

	/// Parameter 1 (meaning depends on event, see CAMERA_STATUS_TYPES enum)
	public let p1: Float

	/// Parameter 2 (meaning depends on event, see CAMERA_STATUS_TYPES enum)
	public let p2: Float

	/// Parameter 3 (meaning depends on event, see CAMERA_STATUS_TYPES enum)
	public let p3: Float

	/// Parameter 4 (meaning depends on event, see CAMERA_STATUS_TYPES enum)
	public let p4: Float
}

extension CameraStatus: Message {
    public static let id = UInt8(179)
    public static var typeName = "CAMERA_STATUS"
    public static var typeDescription = "Camera Event"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Image timestamp (microseconds since UNIX epoch, according to camera clock)"), ("targetSystem", 26, "UInt8", 0, "System ID"), ("camIdx", 27, "UInt8", 0, "Camera ID"), ("imgIdx", 24, "UInt16", 0, "Image index"), ("eventId", 28, "UInt8", 0, "See CAMERA_STATUS_TYPES enum for definition of the bitmask"), ("p1", 8, "Float", 0, "Parameter 1 (meaning depends on event, see CAMERA_STATUS_TYPES enum)"), ("p2", 12, "Float", 0, "Parameter 2 (meaning depends on event, see CAMERA_STATUS_TYPES enum)"), ("p3", 16, "Float", 0, "Parameter 3 (meaning depends on event, see CAMERA_STATUS_TYPES enum)"), ("p4", 20, "Float", 0, "Parameter 4 (meaning depends on event, see CAMERA_STATUS_TYPES enum)")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		p1 = try data.number(at: 8)
		p2 = try data.number(at: 12)
		p3 = try data.number(at: 16)
		p4 = try data.number(at: 20)
		imgIdx = try data.number(at: 24)
		targetSystem = try data.number(at: 26)
		camIdx = try data.number(at: 27)
		eventId = try data.number(at: 28)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 29)
		try payload.set(timeUsec, at: 0)
		try payload.set(p1, at: 8)
		try payload.set(p2, at: 12)
		try payload.set(p3, at: 16)
		try payload.set(p4, at: 20)
		try payload.set(imgIdx, at: 24)
		try payload.set(targetSystem, at: 26)
		try payload.set(camIdx, at: 27)
		try payload.set(eventId, at: 28)
        return payload
    }
}
