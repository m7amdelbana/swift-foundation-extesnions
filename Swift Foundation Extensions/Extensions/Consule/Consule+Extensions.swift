//
//  Consule+Extensions.swift
//  Swift Foundation Extensions
//
//  Created by Mohamed Elbana on 10/4/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation

open class Console {
    
    func LOG(_ tag: String, _ text: String) {
        #if DEBUG
        print("\(tag): \(text)")
        #endif
    }
}
