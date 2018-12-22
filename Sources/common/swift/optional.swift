//
//  optional.swift
//  Mucko
//
//  Created by wookyoung on 17/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

// MARK: isnil
public func isnil(_ obj: Any?) -> Bool {
    if let _ = obj {
        return false
    } else {
        return true
    }
}
