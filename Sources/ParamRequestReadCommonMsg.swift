//
//  ParamRequestReadCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Request to read the onboard parameter with the param_id string id. Onboard parameters are stored as key[const char*] -> value[float]. This allows to send a parameter to any other component (such as the GCS) without the need of previous knowledge of possible parameter names. Thus the same GCS can store different parameters for different autopilots. See also http://qgroundcontrol.org/parameter_interface for a full documentation of QGroundControl and IMU code.
public struct ParamRequestRead {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Onboard parameter id, terminated by NULL if the length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte if the length is exactly 16 chars - applications have to provide 16+1 bytes storage if the ID is stored as string
	public let paramId: String

	/// Parameter index. Send -1 to use the param ID field as identifier (else the param id will be ignored)
	public let paramIndex: Int16
}

extension ParamRequestRead: Message {
    public static let id = UInt8(20)
    public static var typeName = "PARAM_REQUEST_READ"
    public static var typeDescription = "Request to read the onboard parameter with the param_id string id. Onboard parameters are stored as key[const char*] -> value[float]. This allows to send a parameter to any other component (such as the GCS) without the need of previous knowledge of possible parameter names. Thus the same GCS can store different parameters for different autopilots. See also http://qgroundcontrol.org/parameter_interface for a full documentation of QGroundControl and IMU code."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 2, "UInt8", 0, "System ID"), ("targetComponent", 3, "UInt8", 0, "Component ID"), ("paramId", 4, "String", 16, "Onboard parameter id, terminated by NULL if the length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte if the length is exactly 16 chars - applications have to provide 16+1 bytes storage if the ID is stored as string"), ("paramIndex", 0, "Int16", 0, "Parameter index. Send -1 to use the param ID field as identifier (else the param id will be ignored)")]

    public init(data: Data) throws {
		paramIndex = try data.number(at: 0)
		targetSystem = try data.number(at: 2)
		targetComponent = try data.number(at: 3)
		paramId = try data.string(at: 4, length: 16)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 20)
		try payload.set(paramIndex, at: 0)
		try payload.set(targetSystem, at: 2)
		try payload.set(targetComponent, at: 3)
		try payload.set(paramId, at: 4, length: 16)
        return payload
    }
}
