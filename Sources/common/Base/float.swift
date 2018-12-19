//
//  float.swift
//  TestMuckoSwift
//
//  Created by wookyoung on 18/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

import Foundation

// MARK: round
public func round(_ typ: Int.Type, _ x: FloatLiteralType) -> Int {
    return Int(x)
}

public func round(_ x: FloatLiteralType, digits: Int = 0) -> Float64 {
    let divisor = pow(10.0, Double(digits))
    return (x * divisor).rounded() / divisor
}
