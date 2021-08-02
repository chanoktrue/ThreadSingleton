//
//  DefaultDictViewModel.swift
//  ThreadSingleton
//
//  Created by Thongchai Subsaidee on 2/8/2564 BE.
//

import Foundation

class DefaultDictViewModel: ObservableObject {
    
    let count = 100
    
    func setDict() {
        
        for index in 0..<count {
            DefaultDict.shared.set(value: index, key: String(index))
        }
        
        DispatchQueue.concurrentPerform(iterations: count) { index in
            if let n = DefaultDict.shared.object(key: String(index)) as? Int {
                print(n)
            }
        }
        
        DefaultDict.shared.reset()
        
        DispatchQueue.concurrentPerform(iterations: count) { index in
            DefaultDict.shared.set(value: index, key: String(index))
        }
    }
    
    func setDict2() {
        for index in 0..<count {
            DefaultDict.shared.set(value: index, key: String(index))
        }
        
        for index in 0..<count {
            if let n = DefaultDict.shared.object(key: String(index)) {
                print(n)
            }
        }
        
        DefaultDict.shared.reset()
    }
    
    
}
