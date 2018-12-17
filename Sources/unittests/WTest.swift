//
//  XCTest.swift
//  Test
//
//  Created by wookyoung on 1/29/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

open class WTestCaseProvider: NSObject {
}

open class WTestCase : WTestCaseProvider {
    func setUp() {
    }
    
    func tearDown() {
    }
    
    func measureBlock(_ block: ()->Void) {
    }
    
    open func recordFailure(withDescription description: String, inFile filePath: String, function: String = #function, atLine lineNumber: Int, expected: Bool) {
        print(string(description, "\n", "    ", function, " ", filePath, " ", "#", lineNumber))
    }
}



public class Assertion {
    public func equal<T: Equatable>(_ expression1: @autoclosure () throws -> T?, _ expression2: @autoclosure () throws -> T?, _ message: @autoclosure () -> String = "", file: StaticString = #file, function: String = #function, line: UInt = #line) {
        _XCTEvaluateAssertion(.equal, message: message, file: file, function: function, line: line) {
            let (value1, value2) = (try expression1(), try expression2())
            if value1 == value2 {
                return .success
            } else {
                return .expectedFailure(string(repr(value1), " != ", repr(value2)))
            }
        }
    }
    
    public func equal(_ value1: [String], _ value2: [String], _ message: @autoclosure () -> String = "", file: StaticString = #file, function: String = #function, line: UInt = #line) {
        _XCTEvaluateAssertion(.equal, message: message, file: file, function: function, line: line) {
            if value1 == value2 {
                return .success
            } else {
                return .expectedFailure(string(repr(value1), " != ", repr(value2)))
            }
        }
    }
}

public let Assert = Assertion()
