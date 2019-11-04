//
//  Double+Extensions.swift
//  Swift Foundation Extensions
//
//  Created by Mohamed Elbana on 10/4/19.
//  Copyright © 2019 Mohamed Elbana. All rights reserved.
//

import Foundation

extension Double {
    
    /// Rounds the double to decimal places value
    func rounded(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
