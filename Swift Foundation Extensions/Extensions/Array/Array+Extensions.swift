//
//  Array+Extensions.swift
//  Swift Foundation Extensions
//
//  Created by Mohamed Elbana on 10/4/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation

extension Array where Element: Hashable {
    
    /**
     Returns only the unique elements from the array
     
     - returns: Unique array of elements
     */
    var unique: [Element] {
        return Array(Set(self))
    }
    
    /**
     Returns an element from an array at a given index
     
     - parameter index: Index of the element to return
     - returns: An element at the given index
     */
    public func element(at index: Int) -> Element? {
        return index < self.count && index >= 0 ? self[index] : nil
    }
    
    func removeDuplicates() -> [Element] {
        var result = [Element]()
        for value in self {
            if result.contains(value) == false {
                result.append(value)
            }
        }
        return result
    }
}

