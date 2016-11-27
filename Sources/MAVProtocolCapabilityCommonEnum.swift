//
//  MAVProtocolCapabilityCommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Bitmask of (optional) autopilot capabilities (64 bit). If a bit is set, the autopilot supports this capability.
public enum MAVProtocolCapability: Int {

	/// Autopilot supports MISSION float message type.
	case missionFloat = 1

	/// Autopilot supports the new param float message type.
	case paramFloat = 2

	/// Autopilot supports MISSION_INT scaled integer message type.
	case missionInt = 4

	/// Autopilot supports COMMAND_INT scaled integer message type.
	case commandInt = 8

	/// Autopilot supports the new param union message type.
	case paramUnion = 16

	/// Autopilot supports the new FILE_TRANSFER_PROTOCOL message type.
	case ftp = 32

	/// Autopilot supports commanding attitude offboard.
	case setAttitudeTarget = 64

	/// Autopilot supports commanding position and velocity targets in local NED frame.
	case setPositionTargetLocalNed = 128

	/// Autopilot supports commanding position and velocity targets in global scaled integers.
	case setPositionTargetGlobalInt = 256

	/// Autopilot supports terrain protocol / data handling.
	case terrain = 512

	/// Autopilot supports direct actuator control.
	case setActuatorTarget = 1024

	/// Autopilot supports the flight termination command.
	case flightTermination = 2048

	/// Autopilot supports onboard compass calibration.
	case compassCalibration = 4096

	/// Autopilot supports mavlink version 2.
	case mavlink2 = 8192
}

extension MAVProtocolCapability: Enumeration {
    public static var typeName = "MAV_PROTOCOL_CAPABILITY"
    public static var typeDescription = "Bitmask of (optional) autopilot capabilities (64 bit). If a bit is set, the autopilot supports this capability."
    public static var allMembers = [missionFloat, paramFloat, missionInt, commandInt, paramUnion, ftp, setAttitudeTarget, setPositionTargetLocalNed, setPositionTargetGlobalInt, terrain, setActuatorTarget, flightTermination, compassCalibration, mavlink2]
    public static var membersDescriptions = [("MAV_PROTOCOL_CAPABILITY_MISSION_FLOAT", "Autopilot supports MISSION float message type."), ("MAV_PROTOCOL_CAPABILITY_PARAM_FLOAT", "Autopilot supports the new param float message type."), ("MAV_PROTOCOL_CAPABILITY_MISSION_INT", "Autopilot supports MISSION_INT scaled integer message type."), ("MAV_PROTOCOL_CAPABILITY_COMMAND_INT", "Autopilot supports COMMAND_INT scaled integer message type."), ("MAV_PROTOCOL_CAPABILITY_PARAM_UNION", "Autopilot supports the new param union message type."), ("MAV_PROTOCOL_CAPABILITY_FTP", "Autopilot supports the new FILE_TRANSFER_PROTOCOL message type."), ("MAV_PROTOCOL_CAPABILITY_SET_ATTITUDE_TARGET", "Autopilot supports commanding attitude offboard."), ("MAV_PROTOCOL_CAPABILITY_SET_POSITION_TARGET_LOCAL_NED", "Autopilot supports commanding position and velocity targets in local NED frame."), ("MAV_PROTOCOL_CAPABILITY_SET_POSITION_TARGET_GLOBAL_INT", "Autopilot supports commanding position and velocity targets in global scaled integers."), ("MAV_PROTOCOL_CAPABILITY_TERRAIN", "Autopilot supports terrain protocol / data handling."), ("MAV_PROTOCOL_CAPABILITY_SET_ACTUATOR_TARGET", "Autopilot supports direct actuator control."), ("MAV_PROTOCOL_CAPABILITY_FLIGHT_TERMINATION", "Autopilot supports the flight termination command."), ("MAV_PROTOCOL_CAPABILITY_COMPASS_CALIBRATION", "Autopilot supports onboard compass calibration."), ("MAV_PROTOCOL_CAPABILITY_MAVLINK2", "Autopilot supports mavlink version 2.")]
    public static var enumEnd = UInt(8193)
}
