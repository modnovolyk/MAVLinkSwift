//
//  GoproHeartbeatArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Heartbeat from a HeroBus attached GoPro
public struct GoproHeartbeat {

	/// Status
	public let status: GoproHeartbeatStatus

	/// Current capture mode
	public let captureMode: GoproCaptureMode

	/// additional status bits
	public let flags: UInt8
}

extension GoproHeartbeat: Message {
    public static let id = UInt8(215)
    public static var typeName = "GOPRO_HEARTBEAT"
    public static var typeDescription = "Heartbeat from a HeroBus attached GoPro"
    public static var fieldDefinitions: [FieldDefinition] = [("status", 0, "GoproHeartbeatStatus", 0, "Status"), ("captureMode", 1, "GoproCaptureMode", 0, "Current capture mode"), ("flags", 2, "UInt8", 0, "additional status bits")]

    public init(data: Data) throws {
		status = try data.enumeration(at: 0)
		captureMode = try data.enumeration(at: 1)
		flags = try data.number(at: 2)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 3)
		try payload.set(status, at: 0)
		try payload.set(captureMode, at: 1)
		try payload.set(flags, at: 2)
        return payload
    }
}
