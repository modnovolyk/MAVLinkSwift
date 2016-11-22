//
//  MAV_PARAM_TYPE.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Specifies the datatype of a MAVLink parameter.
public enum MAVParamType: UInt8 {

	/// 8-bit unsigned integer
	case uint8 = 1

	/// 8-bit signed integer
	case int8 = 2

	/// 16-bit unsigned integer
	case uint16 = 3

	/// 16-bit signed integer
	case int16 = 4

	/// 32-bit unsigned integer
	case uint32 = 5

	/// 32-bit signed integer
	case int32 = 6

	/// 64-bit unsigned integer
	case uint64 = 7

	/// 64-bit signed integer
	case int64 = 8

	/// 32-bit floating-point
	case real32 = 9

	/// 64-bit floating-point
	case real64 = 10
}

extension MAVParamType: Enumeration {
    public static var typeName = "MAV_PARAM_TYPE"
    public static var typeDescription = "Specifies the datatype of a MAVLink parameter."
    public static var allMembers = [uint8, int8, uint16, int16, uint32, int32, uint64, int64, real32, real64]
    public static var membersDescriptions = [("MAV_PARAM_TYPE_UINT8", "8-bit unsigned integer"), ("MAV_PARAM_TYPE_INT8", "8-bit signed integer"), ("MAV_PARAM_TYPE_UINT16", "16-bit unsigned integer"), ("MAV_PARAM_TYPE_INT16", "16-bit signed integer"), ("MAV_PARAM_TYPE_UINT32", "32-bit unsigned integer"), ("MAV_PARAM_TYPE_INT32", "32-bit signed integer"), ("MAV_PARAM_TYPE_UINT64", "64-bit unsigned integer"), ("MAV_PARAM_TYPE_INT64", "64-bit signed integer"), ("MAV_PARAM_TYPE_REAL32", "32-bit floating-point"), ("MAV_PARAM_TYPE_REAL64", "64-bit floating-point")]
    public static var enumEnd = UInt(11)
}
