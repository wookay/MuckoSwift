//
//  array.swift
//  Mucko
//
//  Created by wookyoung on 17/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

import Foundation

// MARK: join
public func join<S: Sequence>(_ a: S, _ dlm: String = "") -> String {
    return a.map{ x in String(x) }.joined(separator: dlm)
}

// MARK: length
public func length<T>(_ a: Array<T>) -> Int {
    return a.count
}

// MARK: isempty
public func isempty<T>(_ a: Array<T>) -> Bool {
    return a.count == 0
}

public func isempty(_ tup: Void) -> Bool {
    return true
}

// MARK: pushI appendI
extension Array {
    public mutating func pushI(_ item: Element) {
        self.append(item)
    }

    public mutating func appendI(_ items: [Element]) {
        self.append(contentsOf: items)
    }
}
