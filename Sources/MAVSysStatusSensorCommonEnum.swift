//
//  MAVSysStatusSensorCommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// These encode the sensors whose status is sent as part of the SYS_STATUS message.
public enum MAVSysStatusSensor: Int {

	/// 0x01 3D gyro
	case mav3dGyro = 1

	/// 0x02 3D accelerometer
	case mav3dAccel = 2

	/// 0x04 3D magnetometer
	case mav3dMag = 4

	/// 0x08 absolute pressure
	case absolutePressure = 8

	/// 0x10 differential pressure
	case differentialPressure = 16

	/// 0x20 GPS
	case gps = 32

	/// 0x40 optical flow
	case opticalFlow = 64

	/// 0x80 computer vision position
	case visionPosition = 128

	/// 0x100 laser based position
	case laserPosition = 256

	/// 0x200 external ground truth (Vicon or Leica)
	case externalGroundTruth = 512

	/// 0x400 3D angular rate control
	case angularRateControl = 1024

	/// 0x800 attitude stabilization
	case attitudeStabilization = 2048

	/// 0x1000 yaw position
	case yawPosition = 4096

	/// 0x2000 z/altitude control
	case zAltitudeControl = 8192

	/// 0x4000 x/y position control
	case xyPositionControl = 16384

	/// 0x8000 motor outputs / control
	case motorOutputs = 32768

	/// 0x10000 rc receiver
	case rcReceiver = 65536

	/// 0x20000 2nd 3D gyro
	case mav3dGyro2 = 131072

	/// 0x40000 2nd 3D accelerometer
	case mav3dAccel2 = 262144

	/// 0x80000 2nd 3D magnetometer
	case mav3dMag2 = 524288

	/// 0x100000 geofence
	case mavSysStatusGeofence = 1048576

	/// 0x200000 AHRS subsystem health
	case mavSysStatusAhrs = 2097152

	/// 0x400000 Terrain subsystem health
	case mavSysStatusTerrain = 4194304

	/// 0x800000 Motors are reversed
	case mavSysStatusReverseMotor = 8388608

	/// 0x1000000 Logging
	case mavSysStatusLogging = 16777216
}

extension MAVSysStatusSensor: Enumeration {
    public static var typeName = "MAV_SYS_STATUS_SENSOR"
    public static var typeDescription = "These encode the sensors whose status is sent as part of the SYS_STATUS message."
    public static var allMembers = [mav3dGyro, mav3dAccel, mav3dMag, absolutePressure, differentialPressure, gps, opticalFlow, visionPosition, laserPosition, externalGroundTruth, angularRateControl, attitudeStabilization, yawPosition, zAltitudeControl, xyPositionControl, motorOutputs, rcReceiver, mav3dGyro2, mav3dAccel2, mav3dMag2, mavSysStatusGeofence, mavSysStatusAhrs, mavSysStatusTerrain, mavSysStatusReverseMotor, mavSysStatusLogging]
    public static var membersDescriptions = [("MAV_SYS_STATUS_SENSOR_3D_GYRO", "0x01 3D gyro"), ("MAV_SYS_STATUS_SENSOR_3D_ACCEL", "0x02 3D accelerometer"), ("MAV_SYS_STATUS_SENSOR_3D_MAG", "0x04 3D magnetometer"), ("MAV_SYS_STATUS_SENSOR_ABSOLUTE_PRESSURE", "0x08 absolute pressure"), ("MAV_SYS_STATUS_SENSOR_DIFFERENTIAL_PRESSURE", "0x10 differential pressure"), ("MAV_SYS_STATUS_SENSOR_GPS", "0x20 GPS"), ("MAV_SYS_STATUS_SENSOR_OPTICAL_FLOW", "0x40 optical flow"), ("MAV_SYS_STATUS_SENSOR_VISION_POSITION", "0x80 computer vision position"), ("MAV_SYS_STATUS_SENSOR_LASER_POSITION", "0x100 laser based position"), ("MAV_SYS_STATUS_SENSOR_EXTERNAL_GROUND_TRUTH", "0x200 external ground truth (Vicon or Leica)"), ("MAV_SYS_STATUS_SENSOR_ANGULAR_RATE_CONTROL", "0x400 3D angular rate control"), ("MAV_SYS_STATUS_SENSOR_ATTITUDE_STABILIZATION", "0x800 attitude stabilization"), ("MAV_SYS_STATUS_SENSOR_YAW_POSITION", "0x1000 yaw position"), ("MAV_SYS_STATUS_SENSOR_Z_ALTITUDE_CONTROL", "0x2000 z/altitude control"), ("MAV_SYS_STATUS_SENSOR_XY_POSITION_CONTROL", "0x4000 x/y position control"), ("MAV_SYS_STATUS_SENSOR_MOTOR_OUTPUTS", "0x8000 motor outputs / control"), ("MAV_SYS_STATUS_SENSOR_RC_RECEIVER", "0x10000 rc receiver"), ("MAV_SYS_STATUS_SENSOR_3D_GYRO2", "0x20000 2nd 3D gyro"), ("MAV_SYS_STATUS_SENSOR_3D_ACCEL2", "0x40000 2nd 3D accelerometer"), ("MAV_SYS_STATUS_SENSOR_3D_MAG2", "0x80000 2nd 3D magnetometer"), ("MAV_SYS_STATUS_GEOFENCE", "0x100000 geofence"), ("MAV_SYS_STATUS_AHRS", "0x200000 AHRS subsystem health"), ("MAV_SYS_STATUS_TERRAIN", "0x400000 Terrain subsystem health"), ("MAV_SYS_STATUS_REVERSE_MOTOR", "0x800000 Motors are reversed"), ("MAV_SYS_STATUS_LOGGING", "0x1000000 Logging")]
    public static var enumEnd = UInt(16777217)
}
