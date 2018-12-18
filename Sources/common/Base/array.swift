//
//  array.swift
//  Mucko
//
//  Created by wookyoung on 17/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

import Foundation

public func join<S: Sequence>(_ arr: S, _ dlm: String = "") -> String {
    return arr.map{ x in String(x) }.joined(separator: dlm)
}

public func length<T>(_ arr: Array<T>) -> Int {
    return arr.count
}

public func isempty<T>(_ arr: Array<T>) -> Bool {
    return arr.count == 0
}

public func isempty(_ arr: Void) -> Bool {
    return true
}
