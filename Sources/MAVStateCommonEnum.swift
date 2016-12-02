//
//  MAVStateCommonEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Fri Dec 02 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

public enum MAVState: Int {

	/// Uninitialized system, state is unknown.
	case uninit = 0

	/// System is booting up.
	case boot = 1

	/// System is calibrating and not flight-ready.
	case calibrating = 2

	/// System is grounded and on standby. It can be launched any time.
	case standby = 3

	/// System is active and might be already airborne. Motors are engaged.
	case active = 4

	/// System is in a non-normal flight mode. It can however still navigate.
	case critical = 5

	/// System is in a non-normal flight mode. It lost control over parts or over the whole airframe. It is in mayday and going down.
	case emergency = 6

	/// System just initialized its power-down sequence, will shut down now.
	case poweroff = 7
}

extension MAVState: Enumeration {
    public static var typeName = "MAV_STATE"
    public static var typeDescription = ""
    public static var allMembers = [uninit, boot, calibrating, standby, active, critical, emergency, poweroff]
    public static var membersDescriptions = [("MAV_STATE_UNINIT", "Uninitialized system, state is unknown."), ("MAV_STATE_BOOT", "System is booting up."), ("MAV_STATE_CALIBRATING", "System is calibrating and not flight-ready."), ("MAV_STATE_STANDBY", "System is grounded and on standby. It can be launched any time."), ("MAV_STATE_ACTIVE", "System is active and might be already airborne. Motors are engaged."), ("MAV_STATE_CRITICAL", "System is in a non-normal flight mode. It can however still navigate."), ("MAV_STATE_EMERGENCY", "System is in a non-normal flight mode. It lost control over parts or over the whole airframe. It is in mayday and going down."), ("MAV_STATE_POWEROFF", "System just initialized its power-down sequence, will shut down now.")]
    public static var enumEnd = UInt(8)
}
