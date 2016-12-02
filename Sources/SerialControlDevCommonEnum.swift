//
//  SerialControlDevCommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// SERIAL_CONTROL device types
public enum SerialControlDev: Int {

	/// First telemetry port
	case telem1 = 0

	/// Second telemetry port
	case telem2 = 1

	/// First GPS port
	case gps1 = 2

	/// Second GPS port
	case gps2 = 3

	/// system shell
	case shell = 10
}

extension SerialControlDev: Enumeration {
    public static var typeName = "SERIAL_CONTROL_DEV"
    public static var typeDescription = "SERIAL_CONTROL device types"
    public static var allMembers = [telem1, telem2, gps1, gps2, shell]
    public static var membersDescriptions = [("SERIAL_CONTROL_DEV_TELEM1", "First telemetry port"), ("SERIAL_CONTROL_DEV_TELEM2", "Second telemetry port"), ("SERIAL_CONTROL_DEV_GPS1", "First GPS port"), ("SERIAL_CONTROL_DEV_GPS2", "Second GPS port"), ("SERIAL_CONTROL_DEV_SHELL", "system shell")]
    public static var enumEnd = UInt(11)
}
