//
//  strings.swift
//  TestApp
//
//  Created by wookyoung on 17/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

import Foundation

public func strip(_ s: String) -> String {
    return s.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
}

public func split(_ str: String, _ dlm: String) -> [String] {
    return str.components(separatedBy: dlm)
}

extension String {
    init(_ x: Any) {
        self.init(describing: x)
    }
}

public func string(_ args: Any...) -> String {
    return args.map{ x in String(describing: x) }.joined(separator: "")
}

// repr
public func repr(_ obj: Any?) -> String {
    if let x = obj {
        return string(x)
    } else {
        return "nil"
    }
}
