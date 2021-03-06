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

// [String: Any] == [String: Any]
func == <K, V>(left: [K:V?], right: [K:V?]) -> Bool {
    guard let left = left as? [K: V], let right = right as? [K: V] else { return false }
    return NSDictionary(dictionary: left).isEqual(to: right)
}

open class WTestCase : WTestCaseProvider {
    func setUp() {
    }
    
    func tearDown() {
    }
    
    func measureBlock(_ block: ()->Void) {
    }
    
    open func recordFailure(withDescription description: String, inFile filePath: String, function: String = #function, atLine lineNumber: Int, expected: Bool) {
        let path = (filePath as NSString).abbreviatingWithTildeInPath
        print(string("\n", description, "\n", "    ", function, " ", path, " ", "#", lineNumber))
    }
}

public class Assertion {
    public func True(_ expr: @autoclosure () throws -> Bool, _ message: @autoclosure () -> String = "", file: StaticString = #file, function: String = #function, line: UInt = #line) {
        _XCTEvaluateAssertion(.equal, message: message, file: file, function: function, line: line) {
            let val = try expr()
            if val {
                return .success
            } else {
                return .expectedFailure(string("expr() is ", false))
            }
        }
    }
    public func False(_ expr: @autoclosure () throws -> Bool, _ message: @autoclosure () -> String = "", file: StaticString = #file, function: String = #function, line: UInt = #line) {
        _XCTEvaluateAssertion(.equal, message: message, file: file, function: function, line: line) {
            let val = try expr()
            if !val {
                return .success
            } else {
                return .expectedFailure(string("expr() is ", true))
            }
        }
    }
    
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
    
    public func equal(_ value1: Any.Type, _ value2: Any.Type, _ message: @autoclosure () -> String = "", file: StaticString = #file, function: String = #function, line: UInt = #line) {
        _XCTEvaluateAssertion(.equal, message: message, file: file, function: function, line: line) {
            if value1 == value2 {
                return .success
            } else {
                return .expectedFailure(string(repr(value1), " != ", repr(value2)))
            }
        }
    }

    public func equal(_ value1: [String: Any], _ value2: [String: Any], _ message: @autoclosure () -> String = "", file: StaticString = #file, function: String = #function, line: UInt = #line) {
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
