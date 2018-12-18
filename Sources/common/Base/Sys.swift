//
//  Sys.swift
//  TestMuckoSwift
//
//  Created by wookyoung on 18/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

import Foundation

public struct Sys {
    
    public func isosx() -> Bool {
        if #available(macOS 10, *) {
            return true
        } else {
            return false
        }
    }
    
    public func isios() -> Bool {
        if #available(iOS 8, *) {
            return true
        } else {
            return false
        }
    }
    
}
