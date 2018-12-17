//
//  UnitTest.swift
//  Test
//
//  Created by wookyoung on 1/29/16.
//  Copyright © 2016 factorcat. All rights reserved.
//

import Foundation

struct TestResult {
    var tests: Int
    var passed: Int
    var failed: Int
    var errors: Int
}

public func testMethods(class klass: AnyClass) -> [String] {
    var count: CUnsignedInt = 0
    var methods = [String]()
    guard let mlist = class_copyMethodList(klass, &count) else {
        return methods
    }
    for i in 0..<Int(count) {
        let meth = mlist[i]
        let sel: Selector = method_getName(meth)
        let name = NSStringFromSelector(sel)
        if name.hasPrefix("test") {
            methods.append(name)
        }
    }
    free(mlist)
    return methods
}

public class UnitTest {
    static var tests: Int = 0
    static var passed: Int = 0
    static var failed: Int = 0
    static var errors: Int = 0

    class func run<T: WTestCase>(only: [T.Type]) -> TestResult {
        let _ = "\u{001B}["
        let ansi_red    = ""
        let ansi_green  = ""
        let ansi_reset  = ""
//        let ansi_red    = escape + "0;31m"
//        let ansi_green  = escape + "0;32m"
//        let ansi_reset  = escape + "0m"
        
        let started_at = Date()
        print("Started")
        for klass in only {
            switch klass {
            case let classInst as NSObject.Type:
                let instance = classInst.init()
                XCTCurrentTestCase = instance as? WTestCase
                for name in testMethods(class: klass) {
                    instance.perform(NSSelectorFromString(name))
                    tests += 1
                }
            default:
                break
            }
        }
        
        let elapsed: Foundation.TimeInterval = -started_at.timeIntervalSinceNow
        print(String(format: "Finished in %.3g seconds.", elapsed))
        if failed > 0 {
            print(ansi_red)
            print(string(String(repeating: "🚨", count: failed), "  "), terminator: "")
        } else if passed > 0 {
            print(ansi_green)
            print("✅  ", terminator: "")
        }
        print(String(format: "%d tests, %d assertions, %d failures, %d errors",
            tests, passed, failed, errors))
        if failed > 0 {
            print(ansi_reset)
        }
        return TestResult(tests: tests, passed: passed, failed: failed, errors: errors)
    }
    
    public class func report<T: WTestCase>(_ list: [T.Type]) {
        _ = run(only: list)
    }
}
