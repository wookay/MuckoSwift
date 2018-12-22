//
//  some.swift
//  TestMuckoSwift
//
//  Created by wookyoung on 18/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

// MARK: something
public func something<T>(_ x: Any?, _ y: T) -> T {
    if let val = x {
        return val as! T
    } else {
        return y
    }
}
