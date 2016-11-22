//
//  LIMITS_STATUS.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Status of AP_Limits. Sent in extended status stream when AP_Limits is enabled
public struct LimitsStatus {

	/// state of AP_Limits, (see enum LimitState, LIMITS_STATE)
	public let limitsState: LimitsState

	/// time of last breach in milliseconds since boot
	public let lastTrigger: UInt32

	/// time of last recovery action in milliseconds since boot
	public let lastAction: UInt32

	/// time of last successful recovery in milliseconds since boot
	public let lastRecovery: UInt32

	/// time of last all-clear in milliseconds since boot
	public let lastClear: UInt32

	/// number of fence breaches
	public let breachCount: UInt16

	/// AP_Limit_Module bitfield of enabled modules, (see enum moduleid or LIMIT_MODULE)
	public let modsEnabled: UInt8

	/// AP_Limit_Module bitfield of required modules, (see enum moduleid or LIMIT_MODULE)
	public let modsRequired: UInt8

	/// AP_Limit_Module bitfield of triggered modules, (see enum moduleid or LIMIT_MODULE)
	public let modsTriggered: UInt8
}

extension LimitsStatus: Message {
    public static let id = UInt8(167)
    public static var typeName = "LIMITS_STATUS"
    public static var typeDescription = "Status of AP_Limits. Sent in extended status stream when AP_Limits is enabled"
    public static var fieldDefinitions: [FieldDefinition] = [("limitsState", 18, "LimitsState", 0, "state of AP_Limits, (see enum LimitState, LIMITS_STATE)"), ("lastTrigger", 0, "UInt32", 0, "time of last breach in milliseconds since boot"), ("lastAction", 4, "UInt32", 0, "time of last recovery action in milliseconds since boot"), ("lastRecovery", 8, "UInt32", 0, "time of last successful recovery in milliseconds since boot"), ("lastClear", 12, "UInt32", 0, "time of last all-clear in milliseconds since boot"), ("breachCount", 16, "UInt16", 0, "number of fence breaches"), ("modsEnabled", 19, "UInt8", 0, "AP_Limit_Module bitfield of enabled modules, (see enum moduleid or LIMIT_MODULE)"), ("modsRequired", 20, "UInt8", 0, "AP_Limit_Module bitfield of required modules, (see enum moduleid or LIMIT_MODULE)"), ("modsTriggered", 21, "UInt8", 0, "AP_Limit_Module bitfield of triggered modules, (see enum moduleid or LIMIT_MODULE)")]

    public init(data: Data) throws {
		lastTrigger = try data.number(at: 0)
		lastAction = try data.number(at: 4)
		lastRecovery = try data.number(at: 8)
		lastClear = try data.number(at: 12)
		breachCount = try data.number(at: 16)
		limitsState = try data.enumeration(at: 18)
		modsEnabled = try data.number(at: 19)
		modsRequired = try data.number(at: 20)
		modsTriggered = try data.number(at: 21)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 22)
		try payload.set(lastTrigger, at: 0)
		try payload.set(lastAction, at: 4)
		try payload.set(lastRecovery, at: 8)
		try payload.set(lastClear, at: 12)
		try payload.set(breachCount, at: 16)
		try payload.set(limitsState, at: 18)
		try payload.set(modsEnabled, at: 19)
		try payload.set(modsRequired, at: 20)
		try payload.set(modsTriggered, at: 21)
        return payload
    }
}
