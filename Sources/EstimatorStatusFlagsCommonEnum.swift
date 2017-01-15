//
//  EstimatorStatusFlagsCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Flags in EKF_STATUS message
public enum EstimatorStatusFlags: UInt16 {

	/// True if the attitude estimate is good
	case estimatorAttitude = 1

	/// True if the horizontal velocity estimate is good
	case estimatorVelocityHoriz = 2

	/// True if the vertical velocity estimate is good
	case estimatorVelocityVert = 4

	/// True if the horizontal position (relative) estimate is good
	case estimatorPosHorizRel = 8

	/// True if the horizontal position (absolute) estimate is good
	case estimatorPosHorizAbs = 16

	/// True if the vertical position (absolute) estimate is good
	case estimatorPosVertAbs = 32

	/// True if the vertical position (above ground) estimate is good
	case estimatorPosVertAgl = 64

	/// True if the EKF is in a constant position mode and is not using external measurements (eg GPS or optical flow)
	case estimatorConstPosMode = 128

	/// True if the EKF has sufficient data to enter a mode that will provide a (relative) position estimate
	case estimatorPredPosHorizRel = 256

	/// True if the EKF has sufficient data to enter a mode that will provide a (absolute) position estimate
	case estimatorPredPosHorizAbs = 512

	/// True if the EKF has detected a GPS glitch
	case estimatorGpsGlitch = 1024
}

extension EstimatorStatusFlags: Enumeration {
    public static var typeName = "ESTIMATOR_STATUS_FLAGS"
    public static var typeDescription = "Flags in EKF_STATUS message"
    public static var allMembers = [estimatorAttitude, estimatorVelocityHoriz, estimatorVelocityVert, estimatorPosHorizRel, estimatorPosHorizAbs, estimatorPosVertAbs, estimatorPosVertAgl, estimatorConstPosMode, estimatorPredPosHorizRel, estimatorPredPosHorizAbs, estimatorGpsGlitch]
    public static var membersDescriptions = [("ESTIMATOR_ATTITUDE", "True if the attitude estimate is good"), ("ESTIMATOR_VELOCITY_HORIZ", "True if the horizontal velocity estimate is good"), ("ESTIMATOR_VELOCITY_VERT", "True if the vertical velocity estimate is good"), ("ESTIMATOR_POS_HORIZ_REL", "True if the horizontal position (relative) estimate is good"), ("ESTIMATOR_POS_HORIZ_ABS", "True if the horizontal position (absolute) estimate is good"), ("ESTIMATOR_POS_VERT_ABS", "True if the vertical position (absolute) estimate is good"), ("ESTIMATOR_POS_VERT_AGL", "True if the vertical position (above ground) estimate is good"), ("ESTIMATOR_CONST_POS_MODE", "True if the EKF is in a constant position mode and is not using external measurements (eg GPS or optical flow)"), ("ESTIMATOR_PRED_POS_HORIZ_REL", "True if the EKF has sufficient data to enter a mode that will provide a (relative) position estimate"), ("ESTIMATOR_PRED_POS_HORIZ_ABS", "True if the EKF has sufficient data to enter a mode that will provide a (absolute) position estimate"), ("ESTIMATOR_GPS_GLITCH", "True if the EKF has detected a GPS glitch")]
    public static var enumEnd = UInt(1025)
}
