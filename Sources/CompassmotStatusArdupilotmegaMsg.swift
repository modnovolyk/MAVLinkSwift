//
//  CompassmotStatusArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Status of compassmot calibration
public struct CompassmotStatus {

	/// throttle (percent*10)
	public let throttle: UInt16

	/// current (amps)
	public let current: Float

	/// interference (percent)
	public let interference: UInt16

	/// Motor Compensation X
	public let compensationx: Float

	/// Motor Compensation Y
	public let compensationy: Float

	/// Motor Compensation Z
	public let compensationz: Float
}

extension CompassmotStatus: Message {
    public static let id = UInt8(177)
    public static var typeName = "COMPASSMOT_STATUS"
    public static var typeDescription = "Status of compassmot calibration"
    public static var fieldDefinitions: [FieldDefinition] = [("throttle", 16, "UInt16", 0, "throttle (percent*10)"), ("current", 0, "Float", 0, "current (amps)"), ("interference", 18, "UInt16", 0, "interference (percent)"), ("compensationx", 4, "Float", 0, "Motor Compensation X"), ("compensationy", 8, "Float", 0, "Motor Compensation Y"), ("compensationz", 12, "Float", 0, "Motor Compensation Z")]

    public init(data: Data) throws {
		current = try data.number(at: 0)
		compensationx = try data.number(at: 4)
		compensationy = try data.number(at: 8)
		compensationz = try data.number(at: 12)
		throttle = try data.number(at: 16)
		interference = try data.number(at: 18)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 20)
		try payload.set(current, at: 0)
		try payload.set(compensationx, at: 4)
		try payload.set(compensationy, at: 8)
		try payload.set(compensationz, at: 12)
		try payload.set(throttle, at: 16)
		try payload.set(interference, at: 18)
        return payload
    }
}
