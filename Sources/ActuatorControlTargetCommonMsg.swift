//
//  ActuatorControlTargetCommonMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Set the vehicle attitude and body angular rates.
public struct ActuatorControlTarget {

	/// Timestamp (micros since boot or Unix epoch)
	public let timeUsec: UInt64

	/// Actuator group. The "_mlx" indicates this is a multi-instance message and a MAVLink parser should use this field to difference between instances.
	public let groupMlx: UInt8

	/// Actuator controls. Normed to -1..+1 where 0 is neutral position. Throttle for single rotation direction motors is 0..1, negative range for reverse direction. Standard mapping for attitude controls (group 0): (index 0-7): roll, pitch, yaw, throttle, flaps, spoilers, airbrakes, landing gear. Load a pass-through mixer to repurpose them as generic outputs.
	public let controls: [Float]
}

extension ActuatorControlTarget: Message {
    public static let id = UInt8(140)
    public static var typeName = "ACTUATOR_CONTROL_TARGET"
    public static var typeDescription = "Set the vehicle attitude and body angular rates."
    public static var fieldDefinitions: [FieldDefinition] = [("timeUsec", 0, "UInt64", 0, "Timestamp (micros since boot or Unix epoch)"), ("groupMlx", 40, "UInt8", 0, "Actuator group. The \"_mlx\" indicates this is a multi-instance message and a MAVLink parser should use this field to difference between instances."), ("controls", 8, "[Float]", 8, "Actuator controls. Normed to -1..+1 where 0 is neutral position. Throttle for single rotation direction motors is 0..1, negative range for reverse direction. Standard mapping for attitude controls (group 0): (index 0-7): roll, pitch, yaw, throttle, flaps, spoilers, airbrakes, landing gear. Load a pass-through mixer to repurpose them as generic outputs.")]

    public init(data: Data) throws {
		timeUsec = try data.number(at: 0)
		controls = try data.array(at: 8, capacity: 8)
		groupMlx = try data.number(at: 40)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 41)
		try payload.set(timeUsec, at: 0)
		try payload.set(controls, at: 8, capacity: 8)
		try payload.set(groupMlx, at: 40)
        return payload
    }
}
