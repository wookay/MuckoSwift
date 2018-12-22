//
//  data.swift
//  Pods
//
//  Created by wookyoung on 22/12/2018.
//

import Foundation

extension String {
    public init(data: Data?) {
        if let bytes = data {
            self.init(data: bytes, encoding: .utf8)!
        } else {
            self.init(data: Data(), encoding: .utf8)!
        }
    }
}

extension Data {
    public init(string: String?) {
        if let str = string {
            self.init(str.utf8)
        } else {
            self.init()
        }
    }
}

public func length(_ data: Data) -> Int {
    return data.count
}
