//
//  MAVCmdAckCommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// ACK / NACK / ERROR values as a result of MAV_CMDs and for mission item transmission.
public enum MAVCmdAck: Int {

	/// Command / mission item is ok.
	case ok = 1

	/// Generic error message if none of the other reasons fails or if no detailed error reporting is implemented.
	case errFail = 2

	/// The system is refusing to accept this command from this source / communication partner.
	case errAccessDenied = 3

	/// Command or mission item is not supported, other commands would be accepted.
	case errNotSupported = 4

	/// The coordinate frame of this command / mission item is not supported.
	case errCoordinateFrameNotSupported = 5

	/// The coordinate frame of this command is ok, but he coordinate values exceed the safety limits of this system. This is a generic error, please use the more specific error messages below if possible.
	case errCoordinatesOutOfRange = 6

	/// The X or latitude value is out of range.
	case errXLatOutOfRange = 7

	/// The Y or longitude value is out of range.
	case errYLonOutOfRange = 8

	/// The Z or altitude value is out of range.
	case errZAltOutOfRange = 9
}

extension MAVCmdAck: Enumeration {
    public static var typeName = "MAV_CMD_ACK"
    public static var typeDescription = "ACK / NACK / ERROR values as a result of MAV_CMDs and for mission item transmission."
    public static var allMembers = [ok, errFail, errAccessDenied, errNotSupported, errCoordinateFrameNotSupported, errCoordinatesOutOfRange, errXLatOutOfRange, errYLonOutOfRange, errZAltOutOfRange]
    public static var membersDescriptions = [("MAV_CMD_ACK_OK", "Command / mission item is ok."), ("MAV_CMD_ACK_ERR_FAIL", "Generic error message if none of the other reasons fails or if no detailed error reporting is implemented."), ("MAV_CMD_ACK_ERR_ACCESS_DENIED", "The system is refusing to accept this command from this source / communication partner."), ("MAV_CMD_ACK_ERR_NOT_SUPPORTED", "Command or mission item is not supported, other commands would be accepted."), ("MAV_CMD_ACK_ERR_COORDINATE_FRAME_NOT_SUPPORTED", "The coordinate frame of this command / mission item is not supported."), ("MAV_CMD_ACK_ERR_COORDINATES_OUT_OF_RANGE", "The coordinate frame of this command is ok, but he coordinate values exceed the safety limits of this system. This is a generic error, please use the more specific error messages below if possible."), ("MAV_CMD_ACK_ERR_X_LAT_OUT_OF_RANGE", "The X or latitude value is out of range."), ("MAV_CMD_ACK_ERR_Y_LON_OUT_OF_RANGE", "The Y or longitude value is out of range."), ("MAV_CMD_ACK_ERR_Z_ALT_OUT_OF_RANGE", "The Z or altitude value is out of range.")]
    public static var enumEnd = UInt(10)
}
