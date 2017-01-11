//
//  CameraFeedbackArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Camera Capture Feedback
public struct CameraFeedback {

	/// Image timestamp (microseconds since UNIX epoch), as passed in by CAMERA_STATUS message (or autopilot if no CCB)
	public let timeUsec: UInt64

	/// System ID
	public let targetSystem: UInt8

	/// Camera ID
	public let camIdx: UInt8

	/// Image index
	public let imgIdx: UInt16

	/// Latitude in (deg * 1E7)
	public let lat: Int32

	/// Longitude in (deg * 1E7)
	public let lng: Int32

	/// Altitude Absolute (meters AMSL)
	public let altMsl: Float

	/// Altitude Relative (meters above HOME location)
	public let altRel: Float

	/// Camera Roll angle (earth frame, degrees, +-180)
	public let roll: Float

	/// Camera Pitch angle (earth frame, degrees, +-180)
	public let pitch: Float

	/// Camera Yaw (earth frame, degrees, 0-360, true)
	public let yaw: Float

	/// Focal Length (mm)
	public let focLen: Float

	/// See CAMERA_FEEDBACK_FLAGS enum for definition of the bitmask
	public let flags: UInt8
}

extension CameraFeedback: Message {
    public static let id = UInt8(180)
    public static var typeName = "CAMERA_FEEDBACK"
    public static var typeDescription = "Camera Capture Feedback"
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Image timestamp (microseconds since UNIX epoch), as passed in by CAMERA_STATUS message (or autopilot if no CCB)"), ("targetSystem", 42, "UInt8", 0, "System ID"), ("camIdx", 43, "UInt8", 0, "Camera ID"), ("imgIdx", 40, "UInt16", 0, "Image index"), ("lat", 8, "Int32", 0, "Latitude in (deg * 1E7)"), ("lng", 12, "Int32", 0, "Longitude in (deg * 1E7)"), ("altMsl", 16, "Float", 0, "Altitude Absolute (meters AMSL)"), ("altRel", 20, "Float", 0, "Altitude Relative (meters above HOME location)"), ("roll", 24, "Float", 0, "Camera Roll angle (earth frame, degrees, +-180)"), ("pitch", 28, "Float", 0, "Camera Pitch angle (earth frame, degrees, +-180)"), ("yaw", 32, "Float", 0, "Camera Yaw (earth frame, degrees, 0-360, true)"), ("focLen", 36, "Float", 0, "Focal Length (mm)"), ("flags", 44, "UInt8", 0, "See CAMERA_FEEDBACK_FLAGS enum for definition of the bitmask")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		lat = try data.number(at: 8)
		lng = try data.number(at: 12)
		altMsl = try data.number(at: 16)
		altRel = try data.number(at: 20)
		roll = try data.number(at: 24)
		pitch = try data.number(at: 28)
		yaw = try data.number(at: 32)
		focLen = try data.number(at: 36)
		imgIdx = try data.number(at: 40)
		targetSystem = try data.number(at: 42)
		camIdx = try data.number(at: 43)
		flags = try data.number(at: 44)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 45)
		try payload.set(timeUsec, at: 0)
		try payload.set(lat, at: 8)
		try payload.set(lng, at: 12)
		try payload.set(altMsl, at: 16)
		try payload.set(altRel, at: 20)
		try payload.set(roll, at: 24)
		try payload.set(pitch, at: 28)
		try payload.set(yaw, at: 32)
		try payload.set(focLen, at: 36)
		try payload.set(imgIdx, at: 40)
		try payload.set(targetSystem, at: 42)
		try payload.set(camIdx, at: 43)
		try payload.set(flags, at: 44)
        return payload
    }
}
