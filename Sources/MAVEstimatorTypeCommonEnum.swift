//
//  MAVEstimatorTypeCommonEnum.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

/// Enumeration of estimator types
public enum MAVEstimatorType: UInt8 {

	/// This is a naive estimator without any real covariance feedback.
	case naive = 1

	/// Computer vision based estimate. Might be up to scale.
	case vision = 2

	/// Visual-inertial estimate.
	case vio = 3

	/// Plain GPS estimate.
	case gps = 4

	/// Estimator integrating GPS and inertial sensing.
	case gpsIns = 5
}

extension MAVEstimatorType: Enumeration {
    public static var typeName = "MAV_ESTIMATOR_TYPE"
    public static var typeDescription = "Enumeration of estimator types"
    public static var allMembers = [naive, vision, vio, gps, gpsIns]
    public static var membersDescriptions = [("MAV_ESTIMATOR_TYPE_NAIVE", "This is a naive estimator without any real covariance feedback."), ("MAV_ESTIMATOR_TYPE_VISION", "Computer vision based estimate. Might be up to scale."), ("MAV_ESTIMATOR_TYPE_VIO", "Visual-inertial estimate."), ("MAV_ESTIMATOR_TYPE_GPS", "Plain GPS estimate."), ("MAV_ESTIMATOR_TYPE_GPS_INS", "Estimator integrating GPS and inertial sensing.")]
    public static var enumEnd = UInt(6)
}
