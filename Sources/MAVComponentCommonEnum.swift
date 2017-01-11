//
//  MAVComponentCommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum MAVComponent: Int {
	case mavCompIdAll = 0
	case mavCompIdCamera = 100
	case mavCompIdServo1 = 140
	case mavCompIdServo2 = 141
	case mavCompIdServo3 = 142
	case mavCompIdServo4 = 143
	case mavCompIdServo5 = 144
	case mavCompIdServo6 = 145
	case mavCompIdServo7 = 146
	case mavCompIdServo8 = 147
	case mavCompIdServo9 = 148
	case mavCompIdServo10 = 149
	case mavCompIdServo11 = 150
	case mavCompIdServo12 = 151
	case mavCompIdServo13 = 152
	case mavCompIdServo14 = 153
	case mavCompIdGimbal = 154
	case mavCompIdLog = 155
	case mavCompIdAdsb = 156

	/// On Screen Display (OSD) devices for video links
	case mavCompIdOsd = 157

	/// Generic autopilot peripheral component ID. Meant for devices that do not implement the parameter sub-protocol
	case mavCompIdPeripheral = 158
	case mavCompIdQx1Gimbal = 159
	case mavCompIdMapper = 180
	case mavCompIdMissionplanner = 190
	case mavCompIdPathplanner = 195
	case mavCompIdImu = 200
	case mavCompIdImu2 = 201
	case mavCompIdImu3 = 202
	case mavCompIdGps = 220
	case mavCompIdUdpBridge = 240
	case mavCompIdUartBridge = 241
	case mavCompIdSystemControl = 250
}

extension MAVComponent: Enumeration {
    public static var typeName = "MAV_COMPONENT"
    public static var typeDescription = ""
    public static var allMembers = [mavCompIdAll, mavCompIdCamera, mavCompIdServo1, mavCompIdServo2, mavCompIdServo3, mavCompIdServo4, mavCompIdServo5, mavCompIdServo6, mavCompIdServo7, mavCompIdServo8, mavCompIdServo9, mavCompIdServo10, mavCompIdServo11, mavCompIdServo12, mavCompIdServo13, mavCompIdServo14, mavCompIdGimbal, mavCompIdLog, mavCompIdAdsb, mavCompIdOsd, mavCompIdPeripheral, mavCompIdQx1Gimbal, mavCompIdMapper, mavCompIdMissionplanner, mavCompIdPathplanner, mavCompIdImu, mavCompIdImu2, mavCompIdImu3, mavCompIdGps, mavCompIdUdpBridge, mavCompIdUartBridge, mavCompIdSystemControl]
    public static var membersDescriptions = [("MAV_COMP_ID_ALL", ""), ("MAV_COMP_ID_CAMERA", ""), ("MAV_COMP_ID_SERVO1", ""), ("MAV_COMP_ID_SERVO2", ""), ("MAV_COMP_ID_SERVO3", ""), ("MAV_COMP_ID_SERVO4", ""), ("MAV_COMP_ID_SERVO5", ""), ("MAV_COMP_ID_SERVO6", ""), ("MAV_COMP_ID_SERVO7", ""), ("MAV_COMP_ID_SERVO8", ""), ("MAV_COMP_ID_SERVO9", ""), ("MAV_COMP_ID_SERVO10", ""), ("MAV_COMP_ID_SERVO11", ""), ("MAV_COMP_ID_SERVO12", ""), ("MAV_COMP_ID_SERVO13", ""), ("MAV_COMP_ID_SERVO14", ""), ("MAV_COMP_ID_GIMBAL", ""), ("MAV_COMP_ID_LOG", ""), ("MAV_COMP_ID_ADSB", ""), ("MAV_COMP_ID_OSD", "On Screen Display (OSD) devices for video links"), ("MAV_COMP_ID_PERIPHERAL", "Generic autopilot peripheral component ID. Meant for devices that do not implement the parameter sub-protocol"), ("MAV_COMP_ID_QX1_GIMBAL", ""), ("MAV_COMP_ID_MAPPER", ""), ("MAV_COMP_ID_MISSIONPLANNER", ""), ("MAV_COMP_ID_PATHPLANNER", ""), ("MAV_COMP_ID_IMU", ""), ("MAV_COMP_ID_IMU_2", ""), ("MAV_COMP_ID_IMU_3", ""), ("MAV_COMP_ID_GPS", ""), ("MAV_COMP_ID_UDP_BRIDGE", ""), ("MAV_COMP_ID_UART_BRIDGE", ""), ("MAV_COMP_ID_SYSTEM_CONTROL", "")]
    public static var enumEnd = UInt(251)
}
