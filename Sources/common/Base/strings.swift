//
//  strings.swift
//  TestApp
//
//  Created by wookyoung on 17/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

import Foundation

// MARK: strip
public func strip(_ s: String) -> String {
    return s.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
}

// MARK: split
public func split(_ str: String, _ splitter: CharacterSet, keepempty: Bool) -> [String] {
    let a = str.components(separatedBy: splitter)
    if keepempty {
        return a
    } else {
        return a.filter { !isempty($0) }
    }
}

public func split(_ str: String, keepempty: Bool = false) -> [String] {
    return split(str, CharacterSet.whitespacesAndNewlines, keepempty: keepempty)
}

public func split(_ str: String, _ dlm: String, keepempty: Bool = true) -> [String] {
    return split(str, CharacterSet(charactersIn: dlm), keepempty: keepempty)
}

// MARK: String
extension String {
    init(_ x: Any) {
        self.init(describing: x)
    }

    public init(selector: Selector) {
        let s = NSStringFromSelector(selector)
        self.init(describing: s)
    }
}

// MARK: string
public func string(_ args: Any...) -> String {
    return join(args)
}

public func string(_ args: Any?...) -> String {
    return join(args)
}

// MARK: repr
public func repr(_ obj: Any?) -> String {
    if let x = obj {
        if isa(x, String.self) {
            let quot = "\""
            return string(quot, x, quot)
        } else {
            return string(x)
        }
    } else {
        return "nil"
    }
}

// MARK: isempty
public func isempty(_ arr: String) -> Bool {
    return arr.count == 0
}
