//
//  LinuxMain.swift
//  MAVLink Protocol Swift Library
//
//  Created by Max Odnovolyk on 12/1/16
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

#if os(Linux)
    
import XCTest
@testable import MAVLinkTests
 
XCTMain([
        testCase(CompareWithCImplementationResultsTests.allTests),
        testCase(DataExtensionsTests.allTests),
        testCase(MAVLinkTests.allTests)
    ])
    
extension CompareWithCImplementationResultsTests {
    static let allTests = [
        ("testCImplementationDidParseMessageThatStartsRightAfterCorruptedCRCByte", testCImplementationDidParseMessageThatStartsRightAfterCorruptedCRCByte),
        ("testCImplementationDidParseMessageThatStartsRightAfterCorruptedMessageIdByte", testCImplementationDidParseMessageThatStartsRightAfterCorruptedMessageIdByte),
        ("testCImplementationDidParseSwiftMAVLinkOutput", testCImplementationDidParseSwiftMAVLinkOutput),
        ("testSwiftParserImplementationDidReturnSameFloatValuesAsCImplementation", testSwiftParserImplementationDidReturnSameFloatValuesAsCImplementation),
        ("testSwiftParserImplementationDidReturnSameNumberOfMessagesAsCImplementation", testSwiftParserImplementationDidReturnSameNumberOfMessagesAsCImplementation)
    ]
}
    
extension DataExtensionsTests {
    static let allTests = [
        ("testGetArrayCannotAccessBytesOutOfDataUpperBound", testGetArrayCannotAccessBytesOutOfDataUpperBound),
        ("testGetArrayDidGetArrayAtOffset", testGetArrayDidGetArrayAtOffset),
        ("testGetArrayDidGetRequestedNumberOfItems", testGetArrayDidGetRequestedNumberOfItems),
        ("testGetArrayDidGetSameValuePreviouslySetWithSetArrayCall", testGetArrayDidGetSameValuePreviouslySetWithSetArrayCall),
        ("testGetEnumerationCannotInitWithUnknownValue", testGetEnumerationCannotInitWithUnknownValue),
        ("testGetEnumerationDidGetProperCaseAtOffset", testGetEnumerationDidGetProperCaseAtOffset),
        ("testGetEnumerationDidGetSameValuePreviouslySetWithSetEnumerationCall", testGetEnumerationDidGetSameValuePreviouslySetWithSetEnumerationCall),
        ("testGetNumberByteOrderIsSwappedOnLittleEndianSystem", testGetNumberByteOrderIsSwappedOnLittleEndianSystem),
        ("testGetNumberByteOrderRemainsSameOnBigEndianSystem", testGetNumberByteOrderRemainsSameOnBigEndianSystem),
        ("testGetNumberCannotGetTooLargeNumber", testGetNumberCannotGetTooLargeNumber),
        ("testGetNumberDidGetNumberAtOffset", testGetNumberDidGetNumberAtOffset),
        ("testGetNumberDidGetSameValuePreviouslySetWithSetNumberCall", testGetNumberDidGetSameValuePreviouslySetWithSetNumberCall),
        ("testGetStringCannotAccessBytesOutOfDataUpperBound", testGetStringCannotAccessBytesOutOfDataUpperBound),
        ("testGetStringCannotReadNonASCIISEncodedString", testGetStringCannotReadNonASCIISEncodedString),
        ("testGetStringDidGetSameValuePreviouslySetWithSetStringCall", testGetStringDidGetSameValuePreviouslySetWithSetStringCall),
        ("testGetStringDidReadASCIIEncodedStringAtSpecifiedOffset", testGetStringDidReadASCIIEncodedStringAtSpecifiedOffset),
        ("testGetStringDidReadEmptyNullTerminatedASCIIEncodedString", testGetStringDidReadEmptyNullTerminatedASCIIEncodedString),
        ("testGetStringDidReadExactlyLengthSizedASCIIEncodedStringWithoutNullTermination", testGetStringDidReadExactlyLengthSizedASCIIEncodedStringWithoutNullTermination),
        ("testGetStringDidReadNullTerminatedASCIIEncodedString", testGetStringDidReadNullTerminatedASCIIEncodedString),
        ("testSetArrayCannotSetArrayWithLessCapacityThanArrayCount", testSetArrayCannotSetArrayWithLessCapacityThanArrayCount),
        ("testSetArrayCannotSetValuesOutOfDataUpperBound", testSetArrayCannotSetValuesOutOfDataUpperBound),
        ("testSetArrayDidSetValuesAtOffset", testSetArrayDidSetValuesAtOffset),
        ("testSetEnumerationDidSetProperRawValueAtOffset", testSetEnumerationDidSetProperRawValueAtOffset),
        ("testSetNumberByteOrderIsSwappedOnLittleEndianSystem", testSetNumberByteOrderIsSwappedOnLittleEndianSystem),
        ("testSetNumberByteOrderRemainsSameOnBigEndianSystem", testSetNumberByteOrderRemainsSameOnBigEndianSystem),
        ("testSetNumberCannotSetTooLargeNumber", testSetNumberCannotSetTooLargeNumber),
        ("testSetNumberDidSetNumberAtOffset", testSetNumberDidSetNumberAtOffset),
        ("testSetStringCannotSetNonASCIIString", testSetStringCannotSetNonASCIIString),
        ("testSetStringCanntSetTooLongString", testSetStringCanntSetTooLongString),
        ("testSetStringDidSetEmptyString", testSetStringDidSetEmptyString),
        ("testSetStringDidSetNullTerminatedStringAtOffset", testSetStringDidSetNullTerminatedStringAtOffset)
    ]
}
    
extension MAVLinkTests {
    static let allTests = [
        ("testDispatchDidPutProperComponentId", testDispatchDidPutProperComponentId),
        ("testDispatchDidPutProperCRC", testDispatchDidPutProperCRC),
        ("testDispatchDidPutProperMessageId", testDispatchDidPutProperMessageId),
        ("testDispatchDidPutProperSystemId", testDispatchDidPutProperSystemId),
        ("testDispatchRethrowsDataExtensionsErrors", testDispatchRethrowsDataExtensionsErrors),
        ("testParseDidParseMessageThatStartsRightAfterCorruptedCRCByte", testParseDidParseMessageThatStartsRightAfterCorruptedCRCByte),
        ("testParseDidParseMessageThatStartsRightAfterCorruptedMessageIdByte", testParseDidParseMessageThatStartsRightAfterCorruptedMessageIdByte)
    ]
}
    
#endif
