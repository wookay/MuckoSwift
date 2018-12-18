//  version.swift

import Foundation

// MARK: VersionNumber
public struct VersionNumber: CustomStringConvertible, Comparable {
    var major: Int
    var minor: Int
    var patch: Int
    
    public var description: String {
        return "v\"\(major).\(minor).\(patch)\""
    }
}

extension VersionNumber {
    public init(_ version: String) {
        let nums = split(version, ".")
        var major = 0
        var minor = 0
        var patch = 0
        switch nums.count {
        case 1:
            major = parse(Int.self, nums[0])
        case 2:
            major = parse(Int.self, nums[0])
            minor = parse(Int.self, nums[1])
        case 3:
            major = parse(Int.self, nums[0])
            minor = parse(Int.self, nums[1])
            patch = parse(Int.self, nums[2])
        default:
            break
        }
        
        self.major = major
        self.minor = minor
        self.patch = patch
    }
}

public func ==(lhs: VersionNumber, rhs: VersionNumber) -> Bool {
    return lhs.major == rhs.major && lhs.minor == rhs.minor && lhs.patch == rhs.patch
}

public func <(lhs: VersionNumber, rhs: VersionNumber) -> Bool {
    if lhs.major < rhs.major {
        return true
    }
    if (lhs.major > rhs.major) {
        return false
    }
    if (lhs.minor < rhs.minor) {
        return true
    }
    if (lhs.minor > rhs.minor) {
        return false
    }
    if (lhs.patch < rhs.patch) {
        return true
    }
    if (lhs.patch > rhs.patch) {
        return false
    }
    return false
}
