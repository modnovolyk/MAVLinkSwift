//
//  ExtendedSysStateCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Provides state for additional features
public struct ExtendedSysState {

	/// The VTOL state if applicable. Is set to MAV_VTOL_STATE_UNDEFINED if UAV is not in VTOL configuration.
	public let vtolState: MAVVTOLState

	/// The landed state. Is set to MAV_LANDED_STATE_UNDEFINED if landed state is unknown.
	public let landedState: MAVLandedState
}

extension ExtendedSysState: Message {
    public static let id = UInt8(245)
    public static var typeName = "EXTENDED_SYS_STATE"
    public static var typeDescription = "Provides state for additional features"
    public static var fieldDefinitions: [FieldDefinition] = [("vtolState", 0, "MAVVTOLState", 0, "The VTOL state if applicable. Is set to MAV_VTOL_STATE_UNDEFINED if UAV is not in VTOL configuration."), ("landedState", 1, "MAVLandedState", 0, "The landed state. Is set to MAV_LANDED_STATE_UNDEFINED if landed state is unknown.")]

    public init(data: Data) throws {
		vtolState = try data.enumeration(at: 0)
		landedState = try data.enumeration(at: 1)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 2)
		try payload.set(vtolState, at: 0)
		try payload.set(landedState, at: 1)
        return payload
    }
}
