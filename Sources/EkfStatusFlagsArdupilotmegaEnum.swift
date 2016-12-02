//
//  EkfStatusFlagsArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Flags in EKF_STATUS message
public enum EkfStatusFlags: Int {

	/// set if EKF's attitude estimate is good
	case ekfAttitude = 1

	/// set if EKF's horizontal velocity estimate is good
	case ekfVelocityHoriz = 2

	/// set if EKF's vertical velocity estimate is good
	case ekfVelocityVert = 4

	/// set if EKF's horizontal position (relative) estimate is good
	case ekfPosHorizRel = 8

	/// set if EKF's horizontal position (absolute) estimate is good
	case ekfPosHorizAbs = 16

	/// set if EKF's vertical position (absolute) estimate is good
	case ekfPosVertAbs = 32

	/// set if EKF's vertical position (above ground) estimate is good
	case ekfPosVertAgl = 64

	/// EKF is in constant position mode and does not know it's absolute or relative position
	case ekfConstPosMode = 128

	/// set if EKF's predicted horizontal position (relative) estimate is good
	case ekfPredPosHorizRel = 256

	/// set if EKF's predicted horizontal position (absolute) estimate is good
	case ekfPredPosHorizAbs = 512
}

extension EkfStatusFlags: Enumeration {
    public static var typeName = "EKF_STATUS_FLAGS"
    public static var typeDescription = "Flags in EKF_STATUS message"
    public static var allMembers = [ekfAttitude, ekfVelocityHoriz, ekfVelocityVert, ekfPosHorizRel, ekfPosHorizAbs, ekfPosVertAbs, ekfPosVertAgl, ekfConstPosMode, ekfPredPosHorizRel, ekfPredPosHorizAbs]
    public static var membersDescriptions = [("EKF_ATTITUDE", "set if EKF's attitude estimate is good"), ("EKF_VELOCITY_HORIZ", "set if EKF's horizontal velocity estimate is good"), ("EKF_VELOCITY_VERT", "set if EKF's vertical velocity estimate is good"), ("EKF_POS_HORIZ_REL", "set if EKF's horizontal position (relative) estimate is good"), ("EKF_POS_HORIZ_ABS", "set if EKF's horizontal position (absolute) estimate is good"), ("EKF_POS_VERT_ABS", "set if EKF's vertical position (absolute) estimate is good"), ("EKF_POS_VERT_AGL", "set if EKF's vertical position (above ground) estimate is good"), ("EKF_CONST_POS_MODE", "EKF is in constant position mode and does not know it's absolute or relative position"), ("EKF_PRED_POS_HORIZ_REL", "set if EKF's predicted horizontal position (relative) estimate is good"), ("EKF_PRED_POS_HORIZ_ABS", "set if EKF's predicted horizontal position (absolute) estimate is good")]
    public static var enumEnd = UInt(513)
}
