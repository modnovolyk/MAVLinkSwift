//
//  MAVDataStreamCommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// THIS INTERFACE IS DEPRECATED AS OF JULY 2015. Please use MESSAGE_INTERVAL instead. A data stream is not a fixed set of messages, but rather a recommendation to the autopilot software. Individual autopilots may or may not obey the recommended messages.
public enum MAVDataStream: Int {

	/// Enable all data streams
	case all = 0

	/// Enable IMU_RAW, GPS_RAW, GPS_STATUS packets.
	case rawSensors = 1

	/// Enable GPS_STATUS, CONTROL_STATUS, AUX_STATUS
	case extendedStatus = 2

	/// Enable RC_CHANNELS_SCALED, RC_CHANNELS_RAW, SERVO_OUTPUT_RAW
	case rcChannels = 3

	/// Enable ATTITUDE_CONTROLLER_OUTPUT, POSITION_CONTROLLER_OUTPUT, NAV_CONTROLLER_OUTPUT.
	case rawController = 4

	/// Enable LOCAL_POSITION, GLOBAL_POSITION/GLOBAL_POSITION_INT messages.
	case position = 6

	/// Dependent on the autopilot
	case extra1 = 10

	/// Dependent on the autopilot
	case extra2 = 11

	/// Dependent on the autopilot
	case extra3 = 12
}

extension MAVDataStream: Enumeration {
    public static var typeName = "MAV_DATA_STREAM"
    public static var typeDescription = "THIS INTERFACE IS DEPRECATED AS OF JULY 2015. Please use MESSAGE_INTERVAL instead. A data stream is not a fixed set of messages, but rather a recommendation to the autopilot software. Individual autopilots may or may not obey the recommended messages."
    public static var allMembers = [all, rawSensors, extendedStatus, rcChannels, rawController, position, extra1, extra2, extra3]
    public static var membersDescriptions = [("MAV_DATA_STREAM_ALL", "Enable all data streams"), ("MAV_DATA_STREAM_RAW_SENSORS", "Enable IMU_RAW, GPS_RAW, GPS_STATUS packets."), ("MAV_DATA_STREAM_EXTENDED_STATUS", "Enable GPS_STATUS, CONTROL_STATUS, AUX_STATUS"), ("MAV_DATA_STREAM_RC_CHANNELS", "Enable RC_CHANNELS_SCALED, RC_CHANNELS_RAW, SERVO_OUTPUT_RAW"), ("MAV_DATA_STREAM_RAW_CONTROLLER", "Enable ATTITUDE_CONTROLLER_OUTPUT, POSITION_CONTROLLER_OUTPUT, NAV_CONTROLLER_OUTPUT."), ("MAV_DATA_STREAM_POSITION", "Enable LOCAL_POSITION, GLOBAL_POSITION/GLOBAL_POSITION_INT messages."), ("MAV_DATA_STREAM_EXTRA1", "Dependent on the autopilot"), ("MAV_DATA_STREAM_EXTRA2", "Dependent on the autopilot"), ("MAV_DATA_STREAM_EXTRA3", "Dependent on the autopilot")]
    public static var enumEnd = UInt(13)
}
