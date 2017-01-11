//
//  MAVFrameCommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum MAVFrame: UInt8 {

	/// Global coordinate frame, WGS84 coordinate system. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL)
	case global = 0

	/// Local coordinate frame, Z-up (x: north, y: east, z: down).
	case localNed = 1

	/// NOT a coordinate frame, indicates a mission command.
	case mission = 2

	/// Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location.
	case globalRelativeAlt = 3

	/// Local coordinate frame, Z-down (x: east, y: north, z: up)
	case localEnu = 4

	/// Global coordinate frame, WGS84 coordinate system. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL)
	case globalInt = 5

	/// Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location.
	case globalRelativeAltInt = 6

	/// Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position.
	case localOffsetNed = 7

	/// Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right.
	case bodyNed = 8

	/// Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east.
	case bodyOffsetNed = 9

	/// Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
	case globalTerrainAlt = 10

	/// Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model.
	case globalTerrainAltInt = 11
}

extension MAVFrame: Enumeration {
    public static var typeName = "MAV_FRAME"
    public static var typeDescription = ""
    public static var allMembers = [global, localNed, mission, globalRelativeAlt, localEnu, globalInt, globalRelativeAltInt, localOffsetNed, bodyNed, bodyOffsetNed, globalTerrainAlt, globalTerrainAltInt]
    public static var membersDescriptions = [("MAV_FRAME_GLOBAL", "Global coordinate frame, WGS84 coordinate system. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL)"), ("MAV_FRAME_LOCAL_NED", "Local coordinate frame, Z-up (x: north, y: east, z: down)."), ("MAV_FRAME_MISSION", "NOT a coordinate frame, indicates a mission command."), ("MAV_FRAME_GLOBAL_RELATIVE_ALT", "Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location."), ("MAV_FRAME_LOCAL_ENU", "Local coordinate frame, Z-down (x: east, y: north, z: up)"), ("MAV_FRAME_GLOBAL_INT", "Global coordinate frame, WGS84 coordinate system. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL)"), ("MAV_FRAME_GLOBAL_RELATIVE_ALT_INT", "Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location."), ("MAV_FRAME_LOCAL_OFFSET_NED", "Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position."), ("MAV_FRAME_BODY_NED", "Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right."), ("MAV_FRAME_BODY_OFFSET_NED", "Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east."), ("MAV_FRAME_GLOBAL_TERRAIN_ALT", "Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model."), ("MAV_FRAME_GLOBAL_TERRAIN_ALT_INT", "Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model.")]
    public static var enumEnd = UInt(12)
}
