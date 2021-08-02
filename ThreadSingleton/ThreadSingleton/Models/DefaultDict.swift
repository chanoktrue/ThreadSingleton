//
//  DefaultDict.swift
//  ThreadSingleton
//
//  Created by Thongchai Subsaidee on 2/8/2564 BE.
//

import Foundation

class DefaultDict {
    
    private let serialQueue = DispatchQueue(label: "serialQueue")
    
    private var dict: [String: Any] = [:]
    
    public static let shared = DefaultDict()
    
    private init () {
        
    }
    
    public func set(value: Any, key: String) {
        serialQueue.async {
            self.dict[key] = value
            print("key:\(key) value:\(value)")
        }
    }
    
    public func object(key: String) -> Any? {
        var result: Any?
        serialQueue.async {
            result = self.dict[key]
            print("object: \(result ?? "")")
        }
        return result
    }
    
    public func reset() {
        dict.removeAll()
        print("dict remove all")
    }
    
}
