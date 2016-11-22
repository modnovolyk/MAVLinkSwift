//
//  MAV_SENSOR_ORIENTATION.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Nov 15 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Enumeration of sensor orientation, according to its rotations
public enum MAVSensorOrientation: Int {

	/// Roll: 0, Pitch: 0, Yaw: 0
	case mavSensorRotationNone = 0

	/// Roll: 0, Pitch: 0, Yaw: 45
	case mavSensorRotationYaw45 = 1

	/// Roll: 0, Pitch: 0, Yaw: 90
	case mavSensorRotationYaw90 = 2

	/// Roll: 0, Pitch: 0, Yaw: 135
	case mavSensorRotationYaw135 = 3

	/// Roll: 0, Pitch: 0, Yaw: 180
	case mavSensorRotationYaw180 = 4

	/// Roll: 0, Pitch: 0, Yaw: 225
	case mavSensorRotationYaw225 = 5

	/// Roll: 0, Pitch: 0, Yaw: 270
	case mavSensorRotationYaw270 = 6

	/// Roll: 0, Pitch: 0, Yaw: 315
	case mavSensorRotationYaw315 = 7

	/// Roll: 180, Pitch: 0, Yaw: 0
	case mavSensorRotationRoll180 = 8

	/// Roll: 180, Pitch: 0, Yaw: 45
	case mavSensorRotationRoll180Yaw45 = 9

	/// Roll: 180, Pitch: 0, Yaw: 90
	case mavSensorRotationRoll180Yaw90 = 10

	/// Roll: 180, Pitch: 0, Yaw: 135
	case mavSensorRotationRoll180Yaw135 = 11

	/// Roll: 0, Pitch: 180, Yaw: 0
	case mavSensorRotationPitch180 = 12

	/// Roll: 180, Pitch: 0, Yaw: 225
	case mavSensorRotationRoll180Yaw225 = 13

	/// Roll: 180, Pitch: 0, Yaw: 270
	case mavSensorRotationRoll180Yaw270 = 14

	/// Roll: 180, Pitch: 0, Yaw: 315
	case mavSensorRotationRoll180Yaw315 = 15

	/// Roll: 90, Pitch: 0, Yaw: 0
	case mavSensorRotationRoll90 = 16

	/// Roll: 90, Pitch: 0, Yaw: 45
	case mavSensorRotationRoll90Yaw45 = 17

	/// Roll: 90, Pitch: 0, Yaw: 90
	case mavSensorRotationRoll90Yaw90 = 18

	/// Roll: 90, Pitch: 0, Yaw: 135
	case mavSensorRotationRoll90Yaw135 = 19

	/// Roll: 270, Pitch: 0, Yaw: 0
	case mavSensorRotationRoll270 = 20

	/// Roll: 270, Pitch: 0, Yaw: 45
	case mavSensorRotationRoll270Yaw45 = 21

	/// Roll: 270, Pitch: 0, Yaw: 90
	case mavSensorRotationRoll270Yaw90 = 22

	/// Roll: 270, Pitch: 0, Yaw: 135
	case mavSensorRotationRoll270Yaw135 = 23

	/// Roll: 0, Pitch: 90, Yaw: 0
	case mavSensorRotationPitch90 = 24

	/// Roll: 0, Pitch: 270, Yaw: 0
	case mavSensorRotationPitch270 = 25

	/// Roll: 0, Pitch: 180, Yaw: 90
	case mavSensorRotationPitch180Yaw90 = 26

	/// Roll: 0, Pitch: 180, Yaw: 270
	case mavSensorRotationPitch180Yaw270 = 27

	/// Roll: 90, Pitch: 90, Yaw: 0
	case mavSensorRotationRoll90Pitch90 = 28

	/// Roll: 180, Pitch: 90, Yaw: 0
	case mavSensorRotationRoll180Pitch90 = 29

	/// Roll: 270, Pitch: 90, Yaw: 0
	case mavSensorRotationRoll270Pitch90 = 30

	/// Roll: 90, Pitch: 180, Yaw: 0
	case mavSensorRotationRoll90Pitch180 = 31

	/// Roll: 270, Pitch: 180, Yaw: 0
	case mavSensorRotationRoll270Pitch180 = 32

	/// Roll: 90, Pitch: 270, Yaw: 0
	case mavSensorRotationRoll90Pitch270 = 33

	/// Roll: 180, Pitch: 270, Yaw: 0
	case mavSensorRotationRoll180Pitch270 = 34

	/// Roll: 270, Pitch: 270, Yaw: 0
	case mavSensorRotationRoll270Pitch270 = 35

	/// Roll: 90, Pitch: 180, Yaw: 90
	case mavSensorRotationRoll90Pitch180Yaw90 = 36

	/// Roll: 90, Pitch: 0, Yaw: 270
	case mavSensorRotationRoll90Yaw270 = 37

	/// Roll: 315, Pitch: 315, Yaw: 315
	case mavSensorRotationRoll315Pitch315Yaw315 = 38
}

extension MAVSensorOrientation: Enumeration {
    public static var typeName = "MAV_SENSOR_ORIENTATION"
    public static var typeDescription = "Enumeration of sensor orientation, according to its rotations"
    public static var allMembers = [mavSensorRotationNone, mavSensorRotationYaw45, mavSensorRotationYaw90, mavSensorRotationYaw135, mavSensorRotationYaw180, mavSensorRotationYaw225, mavSensorRotationYaw270, mavSensorRotationYaw315, mavSensorRotationRoll180, mavSensorRotationRoll180Yaw45, mavSensorRotationRoll180Yaw90, mavSensorRotationRoll180Yaw135, mavSensorRotationPitch180, mavSensorRotationRoll180Yaw225, mavSensorRotationRoll180Yaw270, mavSensorRotationRoll180Yaw315, mavSensorRotationRoll90, mavSensorRotationRoll90Yaw45, mavSensorRotationRoll90Yaw90, mavSensorRotationRoll90Yaw135, mavSensorRotationRoll270, mavSensorRotationRoll270Yaw45, mavSensorRotationRoll270Yaw90, mavSensorRotationRoll270Yaw135, mavSensorRotationPitch90, mavSensorRotationPitch270, mavSensorRotationPitch180Yaw90, mavSensorRotationPitch180Yaw270, mavSensorRotationRoll90Pitch90, mavSensorRotationRoll180Pitch90, mavSensorRotationRoll270Pitch90, mavSensorRotationRoll90Pitch180, mavSensorRotationRoll270Pitch180, mavSensorRotationRoll90Pitch270, mavSensorRotationRoll180Pitch270, mavSensorRotationRoll270Pitch270, mavSensorRotationRoll90Pitch180Yaw90, mavSensorRotationRoll90Yaw270, mavSensorRotationRoll315Pitch315Yaw315]
    public static var membersDescriptions = [("MAV_SENSOR_ROTATION_NONE", "Roll: 0, Pitch: 0, Yaw: 0"), ("MAV_SENSOR_ROTATION_YAW_45", "Roll: 0, Pitch: 0, Yaw: 45"), ("MAV_SENSOR_ROTATION_YAW_90", "Roll: 0, Pitch: 0, Yaw: 90"), ("MAV_SENSOR_ROTATION_YAW_135", "Roll: 0, Pitch: 0, Yaw: 135"), ("MAV_SENSOR_ROTATION_YAW_180", "Roll: 0, Pitch: 0, Yaw: 180"), ("MAV_SENSOR_ROTATION_YAW_225", "Roll: 0, Pitch: 0, Yaw: 225"), ("MAV_SENSOR_ROTATION_YAW_270", "Roll: 0, Pitch: 0, Yaw: 270"), ("MAV_SENSOR_ROTATION_YAW_315", "Roll: 0, Pitch: 0, Yaw: 315"), ("MAV_SENSOR_ROTATION_ROLL_180", "Roll: 180, Pitch: 0, Yaw: 0"), ("MAV_SENSOR_ROTATION_ROLL_180_YAW_45", "Roll: 180, Pitch: 0, Yaw: 45"), ("MAV_SENSOR_ROTATION_ROLL_180_YAW_90", "Roll: 180, Pitch: 0, Yaw: 90"), ("MAV_SENSOR_ROTATION_ROLL_180_YAW_135", "Roll: 180, Pitch: 0, Yaw: 135"), ("MAV_SENSOR_ROTATION_PITCH_180", "Roll: 0, Pitch: 180, Yaw: 0"), ("MAV_SENSOR_ROTATION_ROLL_180_YAW_225", "Roll: 180, Pitch: 0, Yaw: 225"), ("MAV_SENSOR_ROTATION_ROLL_180_YAW_270", "Roll: 180, Pitch: 0, Yaw: 270"), ("MAV_SENSOR_ROTATION_ROLL_180_YAW_315", "Roll: 180, Pitch: 0, Yaw: 315"), ("MAV_SENSOR_ROTATION_ROLL_90", "Roll: 90, Pitch: 0, Yaw: 0"), ("MAV_SENSOR_ROTATION_ROLL_90_YAW_45", "Roll: 90, Pitch: 0, Yaw: 45"), ("MAV_SENSOR_ROTATION_ROLL_90_YAW_90", "Roll: 90, Pitch: 0, Yaw: 90"), ("MAV_SENSOR_ROTATION_ROLL_90_YAW_135", "Roll: 90, Pitch: 0, Yaw: 135"), ("MAV_SENSOR_ROTATION_ROLL_270", "Roll: 270, Pitch: 0, Yaw: 0"), ("MAV_SENSOR_ROTATION_ROLL_270_YAW_45", "Roll: 270, Pitch: 0, Yaw: 45"), ("MAV_SENSOR_ROTATION_ROLL_270_YAW_90", "Roll: 270, Pitch: 0, Yaw: 90"), ("MAV_SENSOR_ROTATION_ROLL_270_YAW_135", "Roll: 270, Pitch: 0, Yaw: 135"), ("MAV_SENSOR_ROTATION_PITCH_90", "Roll: 0, Pitch: 90, Yaw: 0"), ("MAV_SENSOR_ROTATION_PITCH_270", "Roll: 0, Pitch: 270, Yaw: 0"), ("MAV_SENSOR_ROTATION_PITCH_180_YAW_90", "Roll: 0, Pitch: 180, Yaw: 90"), ("MAV_SENSOR_ROTATION_PITCH_180_YAW_270", "Roll: 0, Pitch: 180, Yaw: 270"), ("MAV_SENSOR_ROTATION_ROLL_90_PITCH_90", "Roll: 90, Pitch: 90, Yaw: 0"), ("MAV_SENSOR_ROTATION_ROLL_180_PITCH_90", "Roll: 180, Pitch: 90, Yaw: 0"), ("MAV_SENSOR_ROTATION_ROLL_270_PITCH_90", "Roll: 270, Pitch: 90, Yaw: 0"), ("MAV_SENSOR_ROTATION_ROLL_90_PITCH_180", "Roll: 90, Pitch: 180, Yaw: 0"), ("MAV_SENSOR_ROTATION_ROLL_270_PITCH_180", "Roll: 270, Pitch: 180, Yaw: 0"), ("MAV_SENSOR_ROTATION_ROLL_90_PITCH_270", "Roll: 90, Pitch: 270, Yaw: 0"), ("MAV_SENSOR_ROTATION_ROLL_180_PITCH_270", "Roll: 180, Pitch: 270, Yaw: 0"), ("MAV_SENSOR_ROTATION_ROLL_270_PITCH_270", "Roll: 270, Pitch: 270, Yaw: 0"), ("MAV_SENSOR_ROTATION_ROLL_90_PITCH_180_YAW_90", "Roll: 90, Pitch: 180, Yaw: 90"), ("MAV_SENSOR_ROTATION_ROLL_90_YAW_270", "Roll: 90, Pitch: 0, Yaw: 270"), ("MAV_SENSOR_ROTATION_ROLL_315_PITCH_315_YAW_315", "Roll: 315, Pitch: 315, Yaw: 315")]
    public static var enumEnd = UInt(39)
}
