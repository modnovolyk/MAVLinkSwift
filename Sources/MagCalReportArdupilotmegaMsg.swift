//
//  MagCalReportArdupilotmegaMsg.swift
//  MAVLink Protocol Swift Library
//
//  Generated from ardupilotmega.xml, common.xml, uAvionix.xml on Mon Jan 16 2017 by mavgen_swift.py 
//  https://github.com/modnovolyk/MAVLinkSwift
//

import Foundation

/// Reports results of completed compass calibration. Sent until MAG_CAL_ACK received.
public struct MagCalReport {

	/// Compass being calibrated
	public let compassId: UInt8

	/// Bitmask of compasses being calibrated
	public let calMask: UInt8

	/// Status (see MAG_CAL_STATUS enum)
	public let calStatus: UInt8

	/// 0=requires a MAV_CMD_DO_ACCEPT_MAG_CAL, 1=saved to parameters
	public let autosaved: UInt8

	/// RMS milligauss residuals
	public let fitness: Float

	/// X offset
	public let ofsX: Float

	/// Y offset
	public let ofsY: Float

	/// Z offset
	public let ofsZ: Float

	/// X diagonal (matrix 11)
	public let diagX: Float

	/// Y diagonal (matrix 22)
	public let diagY: Float

	/// Z diagonal (matrix 33)
	public let diagZ: Float

	/// X off-diagonal (matrix 12 and 21)
	public let offdiagX: Float

	/// Y off-diagonal (matrix 13 and 31)
	public let offdiagY: Float

	/// Z off-diagonal (matrix 32 and 23)
	public let offdiagZ: Float
}

extension MagCalReport: Message {
    public static let id = UInt8(192)
    public static var typeName = "MAG_CAL_REPORT"
    public static var typeDescription = "Reports results of completed compass calibration. Sent until MAG_CAL_ACK received."
    public static var fieldDefinitions: [FieldDefinition] = [("compassId", 40, "UInt8", 0, "Compass being calibrated"), ("calMask", 41, "UInt8", 0, "Bitmask of compasses being calibrated"), ("calStatus", 42, "UInt8", 0, "Status (see MAG_CAL_STATUS enum)"), ("autosaved", 43, "UInt8", 0, "0=requires a MAV_CMD_DO_ACCEPT_MAG_CAL, 1=saved to parameters"), ("fitness", 0, "Float", 0, "RMS milligauss residuals"), ("ofsX", 4, "Float", 0, "X offset"), ("ofsY", 8, "Float", 0, "Y offset"), ("ofsZ", 12, "Float", 0, "Z offset"), ("diagX", 16, "Float", 0, "X diagonal (matrix 11)"), ("diagY", 20, "Float", 0, "Y diagonal (matrix 22)"), ("diagZ", 24, "Float", 0, "Z diagonal (matrix 33)"), ("offdiagX", 28, "Float", 0, "X off-diagonal (matrix 12 and 21)"), ("offdiagY", 32, "Float", 0, "Y off-diagonal (matrix 13 and 31)"), ("offdiagZ", 36, "Float", 0, "Z off-diagonal (matrix 32 and 23)")]

    public init(data: Data) throws {
		fitness = try data.number(at: 0)
		ofsX = try data.number(at: 4)
		ofsY = try data.number(at: 8)
		ofsZ = try data.number(at: 12)
		diagX = try data.number(at: 16)
		diagY = try data.number(at: 20)
		diagZ = try data.number(at: 24)
		offdiagX = try data.number(at: 28)
		offdiagY = try data.number(at: 32)
		offdiagZ = try data.number(at: 36)
		compassId = try data.number(at: 40)
		calMask = try data.number(at: 41)
		calStatus = try data.number(at: 42)
		autosaved = try data.number(at: 43)
    }

    public func pack() throws -> Data {
        var payload = Data(count: 44)
		try payload.set(fitness, at: 0)
		try payload.set(ofsX, at: 4)
		try payload.set(ofsY, at: 8)
		try payload.set(ofsZ, at: 12)
		try payload.set(diagX, at: 16)
		try payload.set(diagY, at: 20)
		try payload.set(diagZ, at: 24)
		try payload.set(offdiagX, at: 28)
		try payload.set(offdiagY, at: 32)
		try payload.set(offdiagZ, at: 36)
		try payload.set(compassId, at: 40)
		try payload.set(calMask, at: 41)
		try payload.set(calStatus, at: 42)
		try payload.set(autosaved, at: 43)
        return payload
    }
}
