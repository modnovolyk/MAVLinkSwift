//
//  LinuxMain.swift
//  MAVLink
//
//  Created by Max Odnovolyk on 12/1/16.
//  Copyright © 2016 Build Apps. All rights reserved.
//

#if os(Linux)
    
import XCTest
@testable import MAVLinkTests
 
XCTMain([
        testCase(CompareWithCImplementationResultsTest.allTests),
        testCase(DataExtensionsTests.allTests),
        testCase(MAVLinkTests.allTests)
    ])
    
extension CompareWithCImplementationResultsTest {
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
