//
//  boot.swift
//  TestMuckoSwift
//
//  Created by wookyoung on 18/12/2018.
//  Copyright © 2018 wookyoung. All rights reserved.
//

public struct MethodError: Error {
}

public func getfield(_ obj: Any, _ name: String) -> Any {
    let m = Mirror(reflecting: obj)
    return m.children.first { $0.label == name }?.value as Any
}
