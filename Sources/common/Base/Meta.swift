//
//  Meta.swift
//  TestMuckoSwift
//
//  Created by wookyoung on 18/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

import Foundation

// MARK: isa
public func isa(_ a: Any, _ typ: Any.Type) -> Bool {
    return type(of: a) == typ
}

// MARK: typeof
public func typeof<T>(_ a: T) -> Any.Type {
    return type(of: a)
}
