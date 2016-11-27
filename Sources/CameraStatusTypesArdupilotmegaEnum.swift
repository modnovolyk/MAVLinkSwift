//
//  CameraStatusTypesArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Sun Nov 27 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum CameraStatusTypes: Int {

	/// Camera heartbeat, announce camera component ID at 1hz
	case cameraStatusTypeHeartbeat = 0

	/// Camera image triggered
	case cameraStatusTypeTrigger = 1

	/// Camera connection lost
	case cameraStatusTypeDisconnect = 2

	/// Camera unknown error
	case cameraStatusTypeError = 3

	/// Camera battery low. Parameter p1 shows reported voltage
	case cameraStatusTypeLowbatt = 4

	/// Camera storage low. Parameter p1 shows reported shots remaining
	case cameraStatusTypeLowstore = 5

	/// Camera storage low. Parameter p1 shows reported video minutes remaining
	case cameraStatusTypeLowstorev = 6
}

extension CameraStatusTypes: Enumeration {
    public static var typeName = "CAMERA_STATUS_TYPES"
    public static var typeDescription = ""
    public static var allMembers = [cameraStatusTypeHeartbeat, cameraStatusTypeTrigger, cameraStatusTypeDisconnect, cameraStatusTypeError, cameraStatusTypeLowbatt, cameraStatusTypeLowstore, cameraStatusTypeLowstorev]
    public static var membersDescriptions = [("CAMERA_STATUS_TYPE_HEARTBEAT", "Camera heartbeat, announce camera component ID at 1hz"), ("CAMERA_STATUS_TYPE_TRIGGER", "Camera image triggered"), ("CAMERA_STATUS_TYPE_DISCONNECT", "Camera connection lost"), ("CAMERA_STATUS_TYPE_ERROR", "Camera unknown error"), ("CAMERA_STATUS_TYPE_LOWBATT", "Camera battery low. Parameter p1 shows reported voltage"), ("CAMERA_STATUS_TYPE_LOWSTORE", "Camera storage low. Parameter p1 shows reported shots remaining"), ("CAMERA_STATUS_TYPE_LOWSTOREV", "Camera storage low. Parameter p1 shows reported video minutes remaining")]
    public static var enumEnd = UInt(7)
}
