//
//  array.swift
//  Mucko
//
//  Created by wookyoung on 17/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

import Foundation

public func join<S: Sequence>(_ a: S, _ dlm: String = "") -> String {
    return a.map{ x in String(x) }.joined(separator: dlm)
}

public func length<T>(_ a: Array<T>) -> Int {
    return a.count
}

public func isempty<T>(_ a: Array<T>) -> Bool {
    return a.count == 0
}

public func isempty(_ tup: Void) -> Bool {
    return true
}

public func pushI<T>(_ a: inout Array<T>, _ item: T) -> Array<T> {
    a.append(item)
    return a
}

public func appendI<T>(_ a: inout Array<T>, _ items: Array<T>) -> Array<T> {
    a.append(contentsOf: items)
    return a
}
