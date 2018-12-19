//
//  parse.swift
//  TestApp
//
//  Created by wookyoung on 17/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

import Foundation

// MARK: parse
public func parse(_ typ: Int.Type, _ str: String) -> Int {
    return Int(str)!
}

public func parse(_ typ: Float32.Type, _ str: String) -> Float32 {
    return Float32(str)!
}

public func parse(_ typ: Double.Type, _ str: String) -> Double {
    return Double(str)!
}
