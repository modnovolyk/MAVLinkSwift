//
//  SensorOffsetsArdupilotmegaMsg.swift
//  MAVLink Micro Air Vehicle Communication Protocol
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Wed Jan 11 2017 by mavgen_swift.py 
//  http://qgroundcontrol.org/mavlink/start
//

import Foundation

/// Offsets and calibrations values for hardware sensors. This makes it easier to debug the calibration process.
public struct SensorOffsets {

	/// magnetometer X offset
	public let magOfsX: Int16

	/// magnetometer Y offset
	public let magOfsY: Int16

	/// magnetometer Z offset
	public let magOfsZ: Int16

	/// magnetic declination (radians)
	public let magDeclination: Float

	/// raw pressure from barometer
	public let rawPress: Int32

	/// raw temperature from barometer
	public let rawTemp: Int32

	/// gyro X calibration
	public let gyroCalX: Float

	/// gyro Y calibration
	public let gyroCalY: Float

	/// gyro Z calibration
	public let gyroCalZ: Float

	/// accel X calibration
	public let accelCalX: Float

	/// accel Y calibration
	public let accelCalY: Float

	/// accel Z calibration
	public let accelCalZ: Float
}

extension SensorOffsets: Message {
    public static let id = UInt8(150)
    public static var typeName = "SENSOR_OFFSETS"
    public static var typeDescription = "Offsets and calibrations values for hardware sensors. This makes it easier to debug the calibration process."
    public static var fieldDefinitions: [FieldDefinition] = [("magOfsX", 36, "Int16", 0, "magnetometer X offset"), ("magOfsY", 38, "Int16", 0, "magnetometer Y offset"), ("magOfsZ", 40, "Int16", 0, "magnetometer Z offset"), ("magDeclination", 0, "Float", 0, "magnetic declination (radians)"), ("rawPress", 4, "Int32", 0, "raw pressure from barometer"), ("rawTemp", 8, "Int32", 0, "raw temperature from barometer"), ("gyroCalX", 12, "Float", 0, "gyro X calibration"), ("gyroCalY", 16, "Float", 0, "gyro Y calibration"), ("gyroCalZ", 20, "Float", 0, "gyro Z calibration"), ("accelCalX", 24, "Float", 0, "accel X calibration"), ("accelCalY", 28, "Float", 0, "accel Y calibration"), ("accelCalZ", 32, "Float", 0, "accel Z calibration")]

    public init(data: Data) throws {
		magDeclination = try data.number(at: 0)
		rawPress = try data.number(at: 4)
		rawTemp = try data.number(at: 8)
		gyroCalX = try data.number(at: 12)
		gyroCalY = try data.number(at: 16)
		gyroCalZ = try data.number(at: 20)
		accelCalX = try data.number(at: 24)
		accelCalY = try data.number(at: 28)
		accelCalZ = try data.number(at: 32)
		magOfsX = try data.number(at: 36)
		magOfsY = try data.number(at: 38)
		magOfsZ = try data.number(at: 40)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 42)
		try payload.set(magDeclination, at: 0)
		try payload.set(rawPress, at: 4)
		try payload.set(rawTemp, at: 8)
		try payload.set(gyroCalX, at: 12)
		try payload.set(gyroCalY, at: 16)
		try payload.set(gyroCalZ, at: 20)
		try payload.set(accelCalX, at: 24)
		try payload.set(accelCalY, at: 28)
		try payload.set(accelCalZ, at: 32)
		try payload.set(magOfsX, at: 36)
		try payload.set(magOfsY, at: 38)
		try payload.set(magOfsZ, at: 40)
        return payload
    }
}
