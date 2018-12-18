//
//  error.swift
//  TestMuckoSwift
//
//  Created by wookyoung on 18/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

import Foundation

public protocol Exception: Error {
    
}

public struct BoundsError: Exception {
    let a: Int
    let i: Int
    public init(_ a: Int, _ i: Int) {
        self.a = a
        self.i = i
    }
}
