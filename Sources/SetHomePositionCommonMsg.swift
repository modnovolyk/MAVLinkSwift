//
//  SetHomePositionCommonMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Tue Jan 17 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// The position the system will return to and land on. The position is set automatically by the system during the takeoff in case it was not explicitely set by the operator before or after. The global and local positions encode the position in the respective coordinate frames, while the q parameter encodes the orientation of the surface. Under normal conditions it describes the heading and terrain slope, which can be used by the aircraft to adjust the approach. The approach 3D vector describes the point to which the system should fly in normal flight mode and then perform a landing sequence along the vector.
public struct SetHomePosition {

	/// System ID.
	public let targetSystem: UInt8

	/// Latitude (WGS84), in degrees * 1E7
	public let latitude: Int32

	/// Longitude (WGS84, in degrees * 1E7
	public let longitude: Int32

	/// Altitude (AMSL), in meters * 1000 (positive for up)
	public let altitude: Int32

	/// Local X position of this position in the local coordinate frame
	public let x: Float

	/// Local Y position of this position in the local coordinate frame
	public let y: Float

	/// Local Z position of this position in the local coordinate frame
	public let z: Float

	/// World to surface normal and heading transformation of the takeoff position. Used to indicate the heading and slope of the ground
	public let q: [Float]

	/// Local X position of the end of the approach vector. Multicopters should set this position based on their takeoff path. Grass-landing fixed wing aircraft should set it the same way as multicopters. Runway-landing fixed wing aircraft should set it to the opposite direction of the takeoff, assuming the takeoff happened from the threshold / touchdown zone.
	public let approachX: Float

	/// Local Y position of the end of the approach vector. Multicopters should set this position based on their takeoff path. Grass-landing fixed wing aircraft should set it the same way as multicopters. Runway-landing fixed wing aircraft should set it to the opposite direction of the takeoff, assuming the takeoff happened from the threshold / touchdown zone.
	public let approachY: Float

	/// Local Z position of the end of the approach vector. Multicopters should set this position based on their takeoff path. Grass-landing fixed wing aircraft should set it the same way as multicopters. Runway-landing fixed wing aircraft should set it to the opposite direction of the takeoff, assuming the takeoff happened from the threshold / touchdown zone.
	public let approachZ: Float
}

extension SetHomePosition: Message {
    public static let id = UInt8(243)
    public static var typeName = "SET_HOME_POSITION"
    public static var typeDescription = "The position the system will return to and land on. The position is set automatically by the system during the takeoff in case it was not explicitely set by the operator before or after. The global and local positions encode the position in the respective coordinate frames, while the q parameter encodes the orientation of the surface. Under normal conditions it describes the heading and terrain slope, which can be used by the aircraft to adjust the approach. The approach 3D vector describes the point to which the system should fly in normal flight mode and then perform a landing sequence along the vector."
    public static var fieldDefinitions: [FieldDefinition] = [("targetSystem", 52, "UInt8", 0, "System ID."), ("latitude", 0, "Int32", 0, "Latitude (WGS84), in degrees * 1E7"), ("longitude", 4, "Int32", 0, "Longitude (WGS84, in degrees * 1E7"), ("altitude", 8, "Int32", 0, "Altitude (AMSL), in meters * 1000 (positive for up)"), ("x", 12, "Float", 0, "Local X position of this position in the local coordinate frame"), ("y", 16, "Float", 0, "Local Y position of this position in the local coordinate frame"), ("z", 20, "Float", 0, "Local Z position of this position in the local coordinate frame"), ("q", 24, "[Float]", 4, "World to surface normal and heading transformation of the takeoff position. Used to indicate the heading and slope of the ground"), ("approachX", 40, "Float", 0, "Local X position of the end of the approach vector. Multicopters should set this position based on their takeoff path. Grass-landing fixed wing aircraft should set it the same way as multicopters. Runway-landing fixed wing aircraft should set it to the opposite direction of the takeoff, assuming the takeoff happened from the threshold / touchdown zone."), ("approachY", 44, "Float", 0, "Local Y position of the end of the approach vector. Multicopters should set this position based on their takeoff path. Grass-landing fixed wing aircraft should set it the same way as multicopters. Runway-landing fixed wing aircraft should set it to the opposite direction of the takeoff, assuming the takeoff happened from the threshold / touchdown zone."), ("approachZ", 48, "Float", 0, "Local Z position of the end of the approach vector. Multicopters should set this position based on their takeoff path. Grass-landing fixed wing aircraft should set it the same way as multicopters. Runway-landing fixed wing aircraft should set it to the opposite direction of the takeoff, assuming the takeoff happened from the threshold / touchdown zone.")]

    public init(data: Data) throws {
		latitude = try data.number(at: 0)
		longitude = try data.number(at: 4)
		altitude = try data.number(at: 8)
		x = try data.number(at: 12)
		y = try data.number(at: 16)
		z = try data.number(at: 20)
		q = try data.array(at: 24, capacity: 4)
		approachX = try data.number(at: 40)
		approachY = try data.number(at: 44)
		approachZ = try data.number(at: 48)
		targetSystem = try data.number(at: 52)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 53)
		try payload.set(latitude, at: 0)
		try payload.set(longitude, at: 4)
		try payload.set(altitude, at: 8)
		try payload.set(x, at: 12)
		try payload.set(y, at: 16)
		try payload.set(z, at: 20)
		try payload.set(q, at: 24, capacity: 4)
		try payload.set(approachX, at: 40)
		try payload.set(approachY, at: 44)
		try payload.set(approachZ, at: 48)
		try payload.set(targetSystem, at: 52)
        return payload
    }
}
