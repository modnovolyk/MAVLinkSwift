//
//  ParamValueCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Emit the value of a onboard parameter. The inclusion of param_count and param_index in the message allows the recipient to keep track of received parameters and allows him to re-request missing parameters after a loss or timeout.
public struct ParamValue {

	/// Onboard parameter id, terminated by NULL if the length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte if the length is exactly 16 chars - applications have to provide 16+1 bytes storage if the ID is stored as string
	public let paramId: String

	/// Onboard parameter value
	public let paramValue: Float

	/// Onboard parameter type: see the MAV_PARAM_TYPE enum for supported data types.
	public let paramType: MAVParamType

	/// Total number of onboard parameters
	public let paramCount: UInt16

	/// Index of this onboard parameter
	public let paramIndex: UInt16
}

extension ParamValue: Message {
    public static let id = UInt8(22)
    public static var typeName = "PARAM_VALUE"
    public static var typeDescription = "Emit the value of a onboard parameter. The inclusion of param_count and param_index in the message allows the recipient to keep track of received parameters and allows him to re-request missing parameters after a loss or timeout."
    public static var fieldDefinitions: [FieldDefinition] = [("paramId", 8, "String", 16, "Onboard parameter id, terminated by NULL if the length is less than 16 human-readable chars and WITHOUT null termination (NULL) byte if the length is exactly 16 chars - applications have to provide 16+1 bytes storage if the ID is stored as string"), ("paramValue", 0, "Float", 0, "Onboard parameter value"), ("paramType", 24, "MAVParamType", 0, "Onboard parameter type: see the MAV_PARAM_TYPE enum for supported data types."), ("paramCount", 4, "UInt16", 0, "Total number of onboard parameters"), ("paramIndex", 6, "UInt16", 0, "Index of this onboard parameter")]

    public init(data: Data) throws {
		paramValue = try data.number(at: 0)
		paramCount = try data.number(at: 4)
		paramIndex = try data.number(at: 6)
		paramId = try data.string(at: 8, length: 16)
		paramType = try data.enumeration(at: 24)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 25)
		try payload.set(paramValue, at: 0)
		try payload.set(paramCount, at: 4)
		try payload.set(paramIndex, at: 6)
		try payload.set(paramId, at: 8, length: 16)
		try payload.set(paramType, at: 24)
        return payload
    }
}
