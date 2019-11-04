//
//  Data+Extensions.swift
//  Swift Foundation Extensions
//
//  Created by Mohamed Elbana on 10/4/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation

public extension Data {
    
    /**
     Converts a data object to an utf8 string.
     
     - returns: The utf8 string or nil
     */
    var utf8String: String {
        return String(decoding: self, as: UTF8.self)
    }
}
