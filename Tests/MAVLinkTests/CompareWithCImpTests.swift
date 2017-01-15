//
//  CompareWithCImpTest.swift
//  MAVLink Protocol Swift Library
//
//  Created by Max Odnovolyk on 10/29/16
//  Copyright (c) 2016 Max Odnovolyk
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation
import XCTest
import Cmavlink
@testable import MAVLink

class CompareWithCImplementationResultsTests: XCTestCase {
    
    func testSwiftParserImplementationDidReturnSameFloatValuesAsCImplementation() {
        let data = testAttitudeData
        
        let mavLink = MAVLink()
        var attitudeMessageSwift: Attitude!
        mavLink.parse(data: data, channel: 0) { message, _ in
            attitudeMessageSwift = message as! Attitude
        }
        
        XCTAssert(attitudeMessageSwift != nil, "Expects to receive valid Attitude message from provided data")
        
        var messageC = mavlink_message_t()
        var statusC = mavlink_status_t()
        var attitudeMessageC = mavlink_attitude_t()

        data.forEach { 
            mavlink_parse_char(0, $0, &messageC, &statusC) 
        }
        
        mavlink_msg_attitude_decode(&messageC, &attitudeMessageC)
        
        XCTAssert(attitudeMessageSwift.timeBootMs == attitudeMessageC.time_boot_ms)
        XCTAssert(attitudeMessageSwift.roll == attitudeMessageC.roll)
        XCTAssert(attitudeMessageSwift.pitch == attitudeMessageC.pitch)
        XCTAssert(attitudeMessageSwift.yaw == attitudeMessageC.yaw)
        XCTAssert(attitudeMessageSwift.rollspeed == attitudeMessageC.rollspeed)
        XCTAssert(attitudeMessageSwift.pitchspeed == attitudeMessageC.pitchspeed)
        XCTAssert(attitudeMessageSwift.yawspeed == attitudeMessageC.yawspeed)
    }
    
    /// Test MAVLink parser on the real world data and compare results with C code results
    /// on the same data set. This test could take significant amount of time (tlog
    /// contains about 163000 messages).
    /// You can disable this test in test scheme configuration to save time.
    /// Tlog file was downloaded from https://github.com/dronekit/dronekit-la-testdata.
    /// APM:Copter V3.4-dev (bdddfae5)
    func testSwiftParserImplementationDidReturnSameNumberOfMessagesAsCImplementation() {
    
        // Load data from test tlog file
        let data = testTlogData
        
        // Message and error counters
        var messageCountSwift = 0
        var messageCountC = 0
        var errors: [String: Int] = [:]
        
        // Delegated messages handler
        let delegate = Delegate(didParse: { _, _, _, _ in
            messageCountSwift += 1
        }, didFailToParseMessage: { _, error, _, _ in
            
            // Сonsidering ParseError.valueSizeOutOfBounds, ParseError.invalidStringEncoding,
            // ParseEnumError.unknownValue which are not handled in C implementation.
            if let count = errors[error.description] {
                errors[error.description] = count + 1
            } else {
                errors[error.description] = 1
            }
        })
        
        // Parse data with MAVLink class instance (pure Swift implementation)
        let mavLink = MAVLink()
        mavLink.delegate = delegate
        mavLink.parse(data: data, channel: 0)
        
        let typesErrorCountSwift = errors.reduce(0) { result, item in result + item.1 }
        
        // Process data with C mavlink_parse_char function
        var message = mavlink_message_t()
        var status = mavlink_status_t()
        
        data.forEach { byte in
            if mavlink_parse_char(0, byte, &message, &status) == UInt8(MAVLINK_FRAMING_OK.rawValue) {
                messageCountC += 1
            }
        }
        
        // Compare results
        XCTAssert(messageCountSwift == messageCountC - typesErrorCountSwift, "Number of messages parsed in MAVLink instance should match messageCountC minus number of errors which is not handled in C code")
    }
    
    /// Test that generated by MAVLink data can be parsed in C implementation.
    /// Tlog file was downloaded from https://github.com/dronekit/dronekit-la-testdata.
    /// APM:Copter V3.4-dev (bdddfae5)
    func testCImplementationDidParseSwiftMAVLinkOutput() {

        continueAfterFailure = false
        
        // Load data from test tlog file
        let data = testTlogData
        
        var messagesCount = 0
        
        // Delegated messages handler
        let delegate = Delegate(didParse: { message, packet, _, link in
            let data = try! packet.finalize(sequence: 0)
            var message = mavlink_message_t()
            var status = mavlink_status_t()
            var result = UInt8(MAVLINK_FRAMING_INCOMPLETE.rawValue)
            
            data.forEach { byte in
                result = mavlink_parse_char(0, byte, &message, &status)
            }
            
            XCTAssert(result == UInt8(MAVLINK_FRAMING_OK.rawValue), "C Implementation should be able to parse finalized by MAVLink message if they both use the same definitions and settings")
            
            messagesCount += 1
        })
        
        // Parse data with MAVLink class instance (pure Swift implementation)
        let mavLink = MAVLink()
        mavLink.delegate = delegate
        mavLink.parse(data: data, channel: 0)
        
        XCTAssert(messagesCount > 0, "Unable to parse any method from test data")
    }
    
    func testCImplementationDidParseMessageThatStartsRightAfterCorruptedMessageIdByte() {
        let unknownMessageId = UInt8(0xC7)
        
        var data = Data(testHeartbeatData.prefix(upTo: 5))
        data.append(unknownMessageId)
        data.append(testStatustextData)
        
        var message = mavlink_message_t()
        var status = mavlink_status_t()
        var result = UInt8(MAVLINK_FRAMING_INCOMPLETE.rawValue)
        
        data.forEach { byte in
            result = mavlink_parse_char(0, byte, &message, &status)
        }
        
        XCTAssert(result == UInt8(MAVLINK_FRAMING_OK.rawValue))
    }

    
    func testCImplementationDidParseMessageThatStartsRightAfterCorruptedCRCByte() {
        let corruptedByte = UInt8(0x00)
        
        var data = testHeartbeatData
        data.removeLast(2)
        data.append(corruptedByte)
        data.append(testStatustextData)
        
        var message = mavlink_message_t()
        var status = mavlink_status_t()
        var result = UInt8(MAVLINK_FRAMING_INCOMPLETE.rawValue)
        
        data.forEach { byte in
            result = mavlink_parse_char(0, byte, &message, &status)
        }
        
        XCTAssert(result == UInt8(MAVLINK_FRAMING_OK.rawValue))
    }
}
