//
//  MAVCmdArdupilotmegaEnum.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Nov 30 2016 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

/// Commands to be executed by the MAV. They can be executed on user request, or as part of a mission script. If the action is used in a mission, the parameter mapping to the waypoint/mission message is as follows: Param 1, Param 2, Param 3, Param 4, X: Param 5, Y:Param 6, Z:Param 7. This command list is similar what ARINC 424 is for commercial aircraft: A data format how to interpret waypoint/mission data.
public enum MAVCmd: UInt16 {

	/// Navigate to MISSION.
	case navWaypoint = 16

	/// Loiter around this MISSION an unlimited amount of time
	case navLoiterUnlim = 17

	/// Loiter around this MISSION for X turns
	case navLoiterTurns = 18

	/// Loiter around this MISSION for X seconds
	case navLoiterTime = 19

	/// Return to launch location
	case navReturnToLaunch = 20

	/// Land at location
	case navLand = 21

	/// Takeoff from ground / hand
	case navTakeoff = 22

	/// Land at local position (local frame only)
	case navLandLocal = 23

	/// Takeoff from local position (local frame only)
	case navTakeoffLocal = 24

	/// Vehicle following, i.e. this waypoint represents the position of a moving vehicle
	case navFollow = 25

	/// Continue on the current course and climb/descend to specified altitude. When the altitude is reached continue to the next command (i.e., don't proceed to the next command until the desired altitude is reached.
	case navContinueAndChangeAlt = 30

	/// Begin loiter at the specified Latitude and Longitude. If Lat=Lon=0, then loiter at the current position. Don't consider the navigation command complete (don't leave loiter) until the altitude has been reached. Additionally, if the Heading Required parameter is non-zero the aircraft will not leave the loiter until heading toward the next waypoint.
	case navLoiterToAlt = 31

	/// Being following a target
	case doFollow = 32

	/// Reposition the MAV after a follow target command has been sent
	case doFollowReposition = 33

	/// Sets the region of interest (ROI) for a sensor set or the vehicle itself. This can then be used by the vehicles control system to control the vehicle attitude and the attitude of various sensors such as cameras.
	case navRoi = 80

	/// Control autonomous path planning on the MAV.
	case navPathplanning = 81

	/// Navigate to MISSION using a spline path.
	case navSplineWaypoint = 82

	/// Mission command to wait for an altitude or downwards vertical speed. This is meant for high altitude balloon launches, allowing the aircraft to be idle until either an altitude is reached or a negative vertical speed is reached (indicating early balloon burst). The wiggle time is how often to wiggle the control surfaces to prevent them seizing up.
	case navAltitudeWait = 83

	/// Takeoff from ground using VTOL mode
	case navVtolTakeoff = 84

	/// Land using VTOL mode
	case navVtolLand = 85

	/// hand control over to an external controller
	case navGuidedEnable = 92

	/// Delay the next navigation command a number of seconds or until a specified time
	case navDelay = 93

	/// NOP - This command is only used to mark the upper limit of the NAV/ACTION commands in the enumeration
	case navLast = 95

	/// Delay mission state machine.
	case conditionDelay = 112

	/// Ascend/descend at rate. Delay mission state machine until desired altitude reached.
	case conditionChangeAlt = 113

	/// Delay mission state machine until within desired distance of next NAV point.
	case conditionDistance = 114

	/// Reach a certain target angle.
	case conditionYaw = 115

	/// NOP - This command is only used to mark the upper limit of the CONDITION commands in the enumeration
	case conditionLast = 159

	/// Set system mode.
	case doSetMode = 176

	/// Jump to the desired command in the mission list. Repeat this action only the specified number of times
	case doJump = 177

	/// Change speed and/or throttle set points.
	case doChangeSpeed = 178

	/// Changes the home location either to the current location or a specified location.
	case doSetHome = 179

	/// Set a system parameter. Caution! Use of this command requires knowledge of the numeric enumeration value of the parameter.
	case doSetParameter = 180

	/// Set a relay to a condition.
	case doSetRelay = 181

	/// Cycle a relay on and off for a desired number of cyles with a desired period.
	case doRepeatRelay = 182

	/// Set a servo to a desired PWM value.
	case doSetServo = 183

	/// Cycle a between its nominal setting and a desired PWM for a desired number of cycles with a desired period.
	case doRepeatServo = 184

	/// Terminate flight immediately
	case doFlighttermination = 185

	/// Change altitude set point.
	case doChangeAltitude = 186

	/// Mission command to perform a landing. This is used as a marker in a mission to tell the autopilot where a sequence of mission items that represents a landing starts. It may also be sent via a COMMAND_LONG to trigger a landing, in which case the nearest (geographically) landing sequence in the mission will be used. The Latitude/Longitude is optional, and may be set to 0/0 if not needed. If specified then it will be used to help find the closest landing sequence.
	case doLandStart = 189

	/// Mission command to perform a landing from a rally point.
	case doRallyLand = 190

	/// Mission command to safely abort an autonmous landing.
	case doGoAround = 191

	/// Reposition the vehicle to a specific WGS84 global position.
	case doReposition = 192

	/// If in a GPS controlled position mode, hold the current position or continue.
	case doPauseContinue = 193

	/// Set moving direction to forward or reverse.
	case doSetReverse = 194

	/// Control onboard camera system.
	case doControlVideo = 200

	/// Sets the region of interest (ROI) for a sensor set or the vehicle itself. This can then be used by the vehicles control system to control the vehicle attitude and the attitude of various sensors such as cameras.
	case doSetRoi = 201

	/// Mission command to configure an on-board camera controller system.
	case doDigicamConfigure = 202

	/// Mission command to control an on-board camera controller system.
	case doDigicamControl = 203

	/// Mission command to configure a camera or antenna mount
	case doMountConfigure = 204

	/// Mission command to control a camera or antenna mount
	case doMountControl = 205

	/// Mission command to set CAM_TRIGG_DIST for this flight
	case doSetCamTriggDist = 206

	/// Mission command to enable the geofence
	case doFenceEnable = 207

	/// Mission command to trigger a parachute
	case doParachute = 208

	/// Mission command to perform motor test
	case doMotorTest = 209

	/// Change to/from inverted flight
	case doInvertedFlight = 210

	/// Mission command to operate EPM gripper
	case doGripper = 211

	/// Enable/disable autotune
	case doAutotuneEnable = 212

	/// Sets a desired vehicle turn angle and speed change
	case navSetYawSpeed = 213

	/// Mission command to control a camera or antenna mount, using a quaternion as reference.
	case doMountControlQuat = 220

	/// set id of master controller
	case doGuidedMaster = 221

	/// set limits for external control
	case doGuidedLimits = 222

	/// Control vehicle engine. This is interpreted by the vehicles engine controller to change the target engine state. It is intended for vehicles with internal combustion engines
	case doEngineControl = 223

	/// NOP - This command is only used to mark the upper limit of the DO commands in the enumeration
	case doLast = 240

	/// Trigger calibration. This command will be only accepted if in pre-flight mode.
	case preflightCalibration = 241

	/// Set sensor offsets. This command will be only accepted if in pre-flight mode.
	case preflightSetSensorOffsets = 242

	/// Trigger UAVCAN config. This command will be only accepted if in pre-flight mode.
	case preflightUavcan = 243

	/// Request storage of different parameter values and logs. This command will be only accepted if in pre-flight mode.
	case preflightStorage = 245

	/// Request the reboot or shutdown of system components.
	case preflightRebootShutdown = 246

	/// Hold / continue the current action
	case overrideGoto = 252

	/// start running a mission
	case missionStart = 300

	/// Arms / Disarms a component
	case componentArmDisarm = 400

	/// Request the home position from the vehicle.
	case getHomePosition = 410

	/// Starts receiver pairing
	case startRxPair = 500

	/// Request the interval between messages for a particular MAVLink message ID
	case getMessageInterval = 510

	/// Request the interval between messages for a particular MAVLink message ID. This interface replaces REQUEST_DATA_STREAM
	case setMessageInterval = 511

	/// Request autopilot capabilities
	case requestAutopilotCapabilities = 520

	/// Start image capture sequence
	case imageStartCapture = 2000

	/// Stop image capture sequence
	case imageStopCapture = 2001

	/// Enable or disable on-board camera triggering system.
	case doTriggerControl = 2003

	/// Starts video capture
	case videoStartCapture = 2500

	/// Stop the current video capture
	case videoStopCapture = 2501

	/// Create a panorama at the current position
	case panoramaCreate = 2800

	/// Request VTOL transition
	case doVtolTransition = 3000

	/// This command sets the submode to standard guided when vehicle is in guided mode. The vehicle holds position and altitude and the user can input the desired velocites along all three axes.
	case setGuidedSubmodeStandard = 4000

	/// This command sets submode circle when vehicle is in guided mode. Vehicle flies along a circle facing the center of the circle. The user can input the velocity along the circle and change the radius. If no input is given the vehicle will hold position.
	case setGuidedSubmodeCircle = 4001

	/// Deploy payload on a Lat / Lon / Alt position. This includes the navigation to reach the required release position and velocity.
	case payloadPrepareDeploy = 30001

	/// Control the payload deployment.
	case payloadControlDeploy = 30002

	/// User defined waypoint item. Ground Station will show the Vehicle as flying through this item.
	case waypointUser1 = 31000

	/// User defined waypoint item. Ground Station will show the Vehicle as flying through this item.
	case waypointUser2 = 31001

	/// User defined waypoint item. Ground Station will show the Vehicle as flying through this item.
	case waypointUser3 = 31002

	/// User defined waypoint item. Ground Station will show the Vehicle as flying through this item.
	case waypointUser4 = 31003

	/// User defined waypoint item. Ground Station will show the Vehicle as flying through this item.
	case waypointUser5 = 31004

	/// User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item.
	case spatialUser1 = 31005

	/// User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item.
	case spatialUser2 = 31006

	/// User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item.
	case spatialUser3 = 31007

	/// User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item.
	case spatialUser4 = 31008

	/// User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item.
	case spatialUser5 = 31009

	/// User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item.
	case user1 = 31010

	/// User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item.
	case user2 = 31011

	/// User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item.
	case user3 = 31012

	/// User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item.
	case user4 = 31013

	/// User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item.
	case user5 = 31014

	/// A system wide power-off event has been initiated.
	case powerOffInitiated = 42000

	/// FLY button has been clicked.
	case soloBtnFlyClick = 42001

	/// FLY button has been held for 1.5 seconds.
	case soloBtnFlyHold = 42002

	/// PAUSE button has been clicked.
	case soloBtnPauseClick = 42003

	/// Initiate a magnetometer calibration
	case doStartMagCal = 42424

	/// Initiate a magnetometer calibration
	case doAcceptMagCal = 42425

	/// Cancel a running magnetometer calibration
	case doCancelMagCal = 42426

	/// Command autopilot to get into factory test/diagnostic mode
	case setFactoryTestMode = 42427

	/// Reply with the version banner
	case doSendBanner = 42428

	/// Causes the gimbal to reset and boot as if it was just powered on
	case gimbalReset = 42501

	/// Reports progress and success or failure of gimbal axis calibration procedure
	case gimbalAxisCalibrationStatus = 42502

	/// Starts commutation calibration on the gimbal
	case gimbalRequestAxisCalibration = 42503

	/// Erases gimbal application and parameters
	case gimbalFullReset = 42505
}

extension MAVCmd: Enumeration {
    public static var typeName = "MAV_CMD"
    public static var typeDescription = "Commands to be executed by the MAV. They can be executed on user request, or as part of a mission script. If the action is used in a mission, the parameter mapping to the waypoint/mission message is as follows: Param 1, Param 2, Param 3, Param 4, X: Param 5, Y:Param 6, Z:Param 7. This command list is similar what ARINC 424 is for commercial aircraft: A data format how to interpret waypoint/mission data."
    public static var allMembers = [navWaypoint, navLoiterUnlim, navLoiterTurns, navLoiterTime, navReturnToLaunch, navLand, navTakeoff, navLandLocal, navTakeoffLocal, navFollow, navContinueAndChangeAlt, navLoiterToAlt, doFollow, doFollowReposition, navRoi, navPathplanning, navSplineWaypoint, navAltitudeWait, navVtolTakeoff, navVtolLand, navGuidedEnable, navDelay, navLast, conditionDelay, conditionChangeAlt, conditionDistance, conditionYaw, conditionLast, doSetMode, doJump, doChangeSpeed, doSetHome, doSetParameter, doSetRelay, doRepeatRelay, doSetServo, doRepeatServo, doFlighttermination, doChangeAltitude, doLandStart, doRallyLand, doGoAround, doReposition, doPauseContinue, doSetReverse, doControlVideo, doSetRoi, doDigicamConfigure, doDigicamControl, doMountConfigure, doMountControl, doSetCamTriggDist, doFenceEnable, doParachute, doMotorTest, doInvertedFlight, doGripper, doAutotuneEnable, navSetYawSpeed, doMountControlQuat, doGuidedMaster, doGuidedLimits, doEngineControl, doLast, preflightCalibration, preflightSetSensorOffsets, preflightUavcan, preflightStorage, preflightRebootShutdown, overrideGoto, missionStart, componentArmDisarm, getHomePosition, startRxPair, getMessageInterval, setMessageInterval, requestAutopilotCapabilities, imageStartCapture, imageStopCapture, doTriggerControl, videoStartCapture, videoStopCapture, panoramaCreate, doVtolTransition, setGuidedSubmodeStandard, setGuidedSubmodeCircle, payloadPrepareDeploy, payloadControlDeploy, waypointUser1, waypointUser2, waypointUser3, waypointUser4, waypointUser5, spatialUser1, spatialUser2, spatialUser3, spatialUser4, spatialUser5, user1, user2, user3, user4, user5, powerOffInitiated, soloBtnFlyClick, soloBtnFlyHold, soloBtnPauseClick, doStartMagCal, doAcceptMagCal, doCancelMagCal, setFactoryTestMode, doSendBanner, gimbalReset, gimbalAxisCalibrationStatus, gimbalRequestAxisCalibration, gimbalFullReset]
    public static var membersDescriptions = [("MAV_CMD_NAV_WAYPOINT", "Navigate to MISSION."), ("MAV_CMD_NAV_LOITER_UNLIM", "Loiter around this MISSION an unlimited amount of time"), ("MAV_CMD_NAV_LOITER_TURNS", "Loiter around this MISSION for X turns"), ("MAV_CMD_NAV_LOITER_TIME", "Loiter around this MISSION for X seconds"), ("MAV_CMD_NAV_RETURN_TO_LAUNCH", "Return to launch location"), ("MAV_CMD_NAV_LAND", "Land at location"), ("MAV_CMD_NAV_TAKEOFF", "Takeoff from ground / hand"), ("MAV_CMD_NAV_LAND_LOCAL", "Land at local position (local frame only)"), ("MAV_CMD_NAV_TAKEOFF_LOCAL", "Takeoff from local position (local frame only)"), ("MAV_CMD_NAV_FOLLOW", "Vehicle following, i.e. this waypoint represents the position of a moving vehicle"), ("MAV_CMD_NAV_CONTINUE_AND_CHANGE_ALT", "Continue on the current course and climb/descend to specified altitude. When the altitude is reached continue to the next command (i.e., don't proceed to the next command until the desired altitude is reached."), ("MAV_CMD_NAV_LOITER_TO_ALT", "Begin loiter at the specified Latitude and Longitude. If Lat=Lon=0, then loiter at the current position. Don't consider the navigation command complete (don't leave loiter) until the altitude has been reached. Additionally, if the Heading Required parameter is non-zero the aircraft will not leave the loiter until heading toward the next waypoint."), ("MAV_CMD_DO_FOLLOW", "Being following a target"), ("MAV_CMD_DO_FOLLOW_REPOSITION", "Reposition the MAV after a follow target command has been sent"), ("MAV_CMD_NAV_ROI", "Sets the region of interest (ROI) for a sensor set or the vehicle itself. This can then be used by the vehicles control system to control the vehicle attitude and the attitude of various sensors such as cameras."), ("MAV_CMD_NAV_PATHPLANNING", "Control autonomous path planning on the MAV."), ("MAV_CMD_NAV_SPLINE_WAYPOINT", "Navigate to MISSION using a spline path."), ("MAV_CMD_NAV_ALTITUDE_WAIT", "Mission command to wait for an altitude or downwards vertical speed. This is meant for high altitude balloon launches, allowing the aircraft to be idle until either an altitude is reached or a negative vertical speed is reached (indicating early balloon burst). The wiggle time is how often to wiggle the control surfaces to prevent them seizing up."), ("MAV_CMD_NAV_VTOL_TAKEOFF", "Takeoff from ground using VTOL mode"), ("MAV_CMD_NAV_VTOL_LAND", "Land using VTOL mode"), ("MAV_CMD_NAV_GUIDED_ENABLE", "hand control over to an external controller"), ("MAV_CMD_NAV_DELAY", "Delay the next navigation command a number of seconds or until a specified time"), ("MAV_CMD_NAV_LAST", "NOP - This command is only used to mark the upper limit of the NAV/ACTION commands in the enumeration"), ("MAV_CMD_CONDITION_DELAY", "Delay mission state machine."), ("MAV_CMD_CONDITION_CHANGE_ALT", "Ascend/descend at rate. Delay mission state machine until desired altitude reached."), ("MAV_CMD_CONDITION_DISTANCE", "Delay mission state machine until within desired distance of next NAV point."), ("MAV_CMD_CONDITION_YAW", "Reach a certain target angle."), ("MAV_CMD_CONDITION_LAST", "NOP - This command is only used to mark the upper limit of the CONDITION commands in the enumeration"), ("MAV_CMD_DO_SET_MODE", "Set system mode."), ("MAV_CMD_DO_JUMP", "Jump to the desired command in the mission list. Repeat this action only the specified number of times"), ("MAV_CMD_DO_CHANGE_SPEED", "Change speed and/or throttle set points."), ("MAV_CMD_DO_SET_HOME", "Changes the home location either to the current location or a specified location."), ("MAV_CMD_DO_SET_PARAMETER", "Set a system parameter. Caution! Use of this command requires knowledge of the numeric enumeration value of the parameter."), ("MAV_CMD_DO_SET_RELAY", "Set a relay to a condition."), ("MAV_CMD_DO_REPEAT_RELAY", "Cycle a relay on and off for a desired number of cyles with a desired period."), ("MAV_CMD_DO_SET_SERVO", "Set a servo to a desired PWM value."), ("MAV_CMD_DO_REPEAT_SERVO", "Cycle a between its nominal setting and a desired PWM for a desired number of cycles with a desired period."), ("MAV_CMD_DO_FLIGHTTERMINATION", "Terminate flight immediately"), ("MAV_CMD_DO_CHANGE_ALTITUDE", "Change altitude set point."), ("MAV_CMD_DO_LAND_START", "Mission command to perform a landing. This is used as a marker in a mission to tell the autopilot where a sequence of mission items that represents a landing starts. It may also be sent via a COMMAND_LONG to trigger a landing, in which case the nearest (geographically) landing sequence in the mission will be used. The Latitude/Longitude is optional, and may be set to 0/0 if not needed. If specified then it will be used to help find the closest landing sequence."), ("MAV_CMD_DO_RALLY_LAND", "Mission command to perform a landing from a rally point."), ("MAV_CMD_DO_GO_AROUND", "Mission command to safely abort an autonmous landing."), ("MAV_CMD_DO_REPOSITION", "Reposition the vehicle to a specific WGS84 global position."), ("MAV_CMD_DO_PAUSE_CONTINUE", "If in a GPS controlled position mode, hold the current position or continue."), ("MAV_CMD_DO_SET_REVERSE", "Set moving direction to forward or reverse."), ("MAV_CMD_DO_CONTROL_VIDEO", "Control onboard camera system."), ("MAV_CMD_DO_SET_ROI", "Sets the region of interest (ROI) for a sensor set or the vehicle itself. This can then be used by the vehicles control system to control the vehicle attitude and the attitude of various sensors such as cameras."), ("MAV_CMD_DO_DIGICAM_CONFIGURE", "Mission command to configure an on-board camera controller system."), ("MAV_CMD_DO_DIGICAM_CONTROL", "Mission command to control an on-board camera controller system."), ("MAV_CMD_DO_MOUNT_CONFIGURE", "Mission command to configure a camera or antenna mount"), ("MAV_CMD_DO_MOUNT_CONTROL", "Mission command to control a camera or antenna mount"), ("MAV_CMD_DO_SET_CAM_TRIGG_DIST", "Mission command to set CAM_TRIGG_DIST for this flight"), ("MAV_CMD_DO_FENCE_ENABLE", "Mission command to enable the geofence"), ("MAV_CMD_DO_PARACHUTE", "Mission command to trigger a parachute"), ("MAV_CMD_DO_MOTOR_TEST", "Mission command to perform motor test"), ("MAV_CMD_DO_INVERTED_FLIGHT", "Change to/from inverted flight"), ("MAV_CMD_DO_GRIPPER", "Mission command to operate EPM gripper"), ("MAV_CMD_DO_AUTOTUNE_ENABLE", "Enable/disable autotune"), ("MAV_CMD_NAV_SET_YAW_SPEED", "Sets a desired vehicle turn angle and speed change"), ("MAV_CMD_DO_MOUNT_CONTROL_QUAT", "Mission command to control a camera or antenna mount, using a quaternion as reference."), ("MAV_CMD_DO_GUIDED_MASTER", "set id of master controller"), ("MAV_CMD_DO_GUIDED_LIMITS", "set limits for external control"), ("MAV_CMD_DO_ENGINE_CONTROL", "Control vehicle engine. This is interpreted by the vehicles engine controller to change the target engine state. It is intended for vehicles with internal combustion engines"), ("MAV_CMD_DO_LAST", "NOP - This command is only used to mark the upper limit of the DO commands in the enumeration"), ("MAV_CMD_PREFLIGHT_CALIBRATION", "Trigger calibration. This command will be only accepted if in pre-flight mode."), ("MAV_CMD_PREFLIGHT_SET_SENSOR_OFFSETS", "Set sensor offsets. This command will be only accepted if in pre-flight mode."), ("MAV_CMD_PREFLIGHT_UAVCAN", "Trigger UAVCAN config. This command will be only accepted if in pre-flight mode."), ("MAV_CMD_PREFLIGHT_STORAGE", "Request storage of different parameter values and logs. This command will be only accepted if in pre-flight mode."), ("MAV_CMD_PREFLIGHT_REBOOT_SHUTDOWN", "Request the reboot or shutdown of system components."), ("MAV_CMD_OVERRIDE_GOTO", "Hold / continue the current action"), ("MAV_CMD_MISSION_START", "start running a mission"), ("MAV_CMD_COMPONENT_ARM_DISARM", "Arms / Disarms a component"), ("MAV_CMD_GET_HOME_POSITION", "Request the home position from the vehicle."), ("MAV_CMD_START_RX_PAIR", "Starts receiver pairing"), ("MAV_CMD_GET_MESSAGE_INTERVAL", "Request the interval between messages for a particular MAVLink message ID"), ("MAV_CMD_SET_MESSAGE_INTERVAL", "Request the interval between messages for a particular MAVLink message ID. This interface replaces REQUEST_DATA_STREAM"), ("MAV_CMD_REQUEST_AUTOPILOT_CAPABILITIES", "Request autopilot capabilities"), ("MAV_CMD_IMAGE_START_CAPTURE", "Start image capture sequence"), ("MAV_CMD_IMAGE_STOP_CAPTURE", "Stop image capture sequence"), ("MAV_CMD_DO_TRIGGER_CONTROL", "Enable or disable on-board camera triggering system."), ("MAV_CMD_VIDEO_START_CAPTURE", "Starts video capture"), ("MAV_CMD_VIDEO_STOP_CAPTURE", "Stop the current video capture"), ("MAV_CMD_PANORAMA_CREATE", "Create a panorama at the current position"), ("MAV_CMD_DO_VTOL_TRANSITION", "Request VTOL transition"), ("MAV_CMD_SET_GUIDED_SUBMODE_STANDARD", "This command sets the submode to standard guided when vehicle is in guided mode. The vehicle holds position and altitude and the user can input the desired velocites along all three axes."), ("MAV_CMD_SET_GUIDED_SUBMODE_CIRCLE", "This command sets submode circle when vehicle is in guided mode. Vehicle flies along a circle facing the center of the circle. The user can input the velocity along the circle and change the radius. If no input is given the vehicle will hold position."), ("MAV_CMD_PAYLOAD_PREPARE_DEPLOY", "Deploy payload on a Lat / Lon / Alt position. This includes the navigation to reach the required release position and velocity."), ("MAV_CMD_PAYLOAD_CONTROL_DEPLOY", "Control the payload deployment."), ("MAV_CMD_WAYPOINT_USER_1", "User defined waypoint item. Ground Station will show the Vehicle as flying through this item."), ("MAV_CMD_WAYPOINT_USER_2", "User defined waypoint item. Ground Station will show the Vehicle as flying through this item."), ("MAV_CMD_WAYPOINT_USER_3", "User defined waypoint item. Ground Station will show the Vehicle as flying through this item."), ("MAV_CMD_WAYPOINT_USER_4", "User defined waypoint item. Ground Station will show the Vehicle as flying through this item."), ("MAV_CMD_WAYPOINT_USER_5", "User defined waypoint item. Ground Station will show the Vehicle as flying through this item."), ("MAV_CMD_SPATIAL_USER_1", "User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item."), ("MAV_CMD_SPATIAL_USER_2", "User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item."), ("MAV_CMD_SPATIAL_USER_3", "User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item."), ("MAV_CMD_SPATIAL_USER_4", "User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item."), ("MAV_CMD_SPATIAL_USER_5", "User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item."), ("MAV_CMD_USER_1", "User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item."), ("MAV_CMD_USER_2", "User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item."), ("MAV_CMD_USER_3", "User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item."), ("MAV_CMD_USER_4", "User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item."), ("MAV_CMD_USER_5", "User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item."), ("MAV_CMD_POWER_OFF_INITIATED", "A system wide power-off event has been initiated."), ("MAV_CMD_SOLO_BTN_FLY_CLICK", "FLY button has been clicked."), ("MAV_CMD_SOLO_BTN_FLY_HOLD", "FLY button has been held for 1.5 seconds."), ("MAV_CMD_SOLO_BTN_PAUSE_CLICK", "PAUSE button has been clicked."), ("MAV_CMD_DO_START_MAG_CAL", "Initiate a magnetometer calibration"), ("MAV_CMD_DO_ACCEPT_MAG_CAL", "Initiate a magnetometer calibration"), ("MAV_CMD_DO_CANCEL_MAG_CAL", "Cancel a running magnetometer calibration"), ("MAV_CMD_SET_FACTORY_TEST_MODE", "Command autopilot to get into factory test/diagnostic mode"), ("MAV_CMD_DO_SEND_BANNER", "Reply with the version banner"), ("MAV_CMD_GIMBAL_RESET", "Causes the gimbal to reset and boot as if it was just powered on"), ("MAV_CMD_GIMBAL_AXIS_CALIBRATION_STATUS", "Reports progress and success or failure of gimbal axis calibration procedure"), ("MAV_CMD_GIMBAL_REQUEST_AXIS_CALIBRATION", "Starts commutation calibration on the gimbal"), ("MAV_CMD_GIMBAL_FULL_RESET", "Erases gimbal application and parameters")]
    public static var enumEnd = UInt(42506)
}
