//
//  ParamMapRCCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Bind a RC channel to a parameter. The parameter should change accoding to the RC channel value.
public struct ParamMapRC {

	/// System ID
	public let targetSystem: UInt8

	/// Component ID
	public let targetComponent: UInt8

	/// Onboard parameter id, terminated by NULL if the length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte if the length is exactly 16 chars - applications have to provide 16+1 bytes storage if the ID is stored as string
	public let paramId: String

	/// Parameter index. Send -1 to use the param ID field as identifier (else the param id will be ignored), send -2 to disable any existing map for this rc_channel_index.
	public let paramIndex: Int16

	/// Index of parameter RC channel. Not equal to the RC channel id. Typically correpsonds to a potentiometer-knob on the RC.
	public let parameterRcChannelIndex: UInt8

	/// Initial parameter value
	public let paramValue0: Float

	/// Scale, maps the RC range [-1, 1] to a parameter value
	public let scale: Float

	/// Minimum param value. The protocol does not define if this overwrites an onboard minimum value. (Depends on implementation)
	public let paramValueMin: Float

	/// Maximum param value. The protocol does not define if this overwrites an onboard maximum value. (Depends on implementation)
	public let paramValueMax: Float
}

extension ParamMapRC: Message {
    public static let id = UInt8(50)
    public static var typeName = "PARAM_MAP_RC"
    public static var typeDescription = "Bind a RC channel to a parameter. The parameter should change accoding to the RC channel value."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 18, "UInt8", 0, "System ID"), ("targetComponent", 19, "UInt8", 0, "Component ID"), ("paramId", 20, "String", 16, "Onboard parameter id, terminated by NULL if the length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte if the length is exactly 16 chars - applications have to provide 16+1 bytes storage if the ID is stored as string"), ("paramIndex", 16, "Int16", 0, "Parameter index. Send -1 to use the param ID field as identifier (else the param id will be ignored), send -2 to disable any existing map for this rc_channel_index."), ("parameterRcChannelIndex", 36, "UInt8", 0, "Index of parameter RC channel. Not equal to the RC channel id. Typically correpsonds to a potentiometer-knob on the RC."), ("paramValue0", 0, "Float", 0, "Initial parameter value"), ("scale", 4, "Float", 0, "Scale, maps the RC range [-1, 1] to a parameter value"), ("paramValueMin", 8, "Float", 0, "Minimum param value. The protocol does not define if this overwrites an onboard minimum value. (Depends on implementation)"), ("paramValueMax", 12, "Float", 0, "Maximum param value. The protocol does not define if this overwrites an onboard maximum value. (Depends on implementation)")]

    public init(data: Data) throws {
		paramValue0 = try data.number(at: 0)
		scale = try data.number(at: 4)
		paramValueMin = try data.number(at: 8)
		paramValueMax = try data.number(at: 12)
		paramIndex = try data.number(at: 16)
		targetSystem = try data.number(at: 18)
		targetComponent = try data.number(at: 19)
		paramId = try data.string(at: 20, length: 16)
		parameterRcChannelIndex = try data.number(at: 36)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 37)
		try payload.set(paramValue0, at: 0)
		try payload.set(scale, at: 4)
		try payload.set(paramValueMin, at: 8)
		try payload.set(paramValueMax, at: 12)
		try payload.set(paramIndex, at: 16)
		try payload.set(targetSystem, at: 18)
		try payload.set(targetComponent, at: 19)
		try payload.set(paramId, at: 20, length: 16)
		try payload.set(parameterRcChannelIndex, at: 36)
        return payload
    }
}
