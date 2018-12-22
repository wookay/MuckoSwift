//
//  coreio.swift
//  TestMuckoSwift
//
//  Created by wookyoung on 18/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

// MARK: println
public func println(_ args: Any?...) {
    for arg in args {
        if let x = arg {
            print(x)
        } else {
            print(typeof(arg))
        }
    }
    print("\n")
}
