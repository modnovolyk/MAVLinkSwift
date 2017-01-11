//
//  StatustextCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Status text message. These messages are printed in yellow in the COMM console of QGroundControl. WARNING: They consume quite some bandwidth, so use only for important status and error messages. If implemented wisely, these messages are buffered on the MCU and sent only at a limited rate (e.g. 10 Hz).
public struct Statustext {

	/// Severity of status. Relies on the definitions within RFC-5424. See enum MAV_SEVERITY.
	public let severity: MAVSeverity

	/// Status text message, without null termination character
	public let text: String
}

extension Statustext: Message {
    public static let id = UInt8(253)
    public static var typeName = "STATUSTEXT"
    public static var typeDescription = "Status text message. These messages are printed in yellow in the COMM console of QGroundControl. WARNING: They consume quite some bandwidth, so use only for important status and error messages. If implemented wisely, these messages are buffered on the MCU and sent only at a limited rate (e.g. 10 Hz)."
    public static var fieldDefinitions: [FieldDefinition] = [("severity", 0, "MAVSeverity", 0, "Severity of status. Relies on the definitions within RFC-5424. See enum MAV_SEVERITY."), ("text", 1, "String", 50, "Status text message, without null termination character")]

    public init(data: Data) throws {
		severity = try data.enumeration(at: 0)
		text = try data.string(at: 1, length: 50)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 51)
		try payload.set(severity, at: 0)
		try payload.set(text, at: 1, length: 50)
        return payload
    }
}
