//
//  Conversion.swift
//  Currency
//
//  Created by Cloutier, Vincent on 2020-11-02.
//

import SwiftUI

// For fetching data
struct Conversion: Decodable {
    
    var rates: [String: Double]
    var date: String
    var base: String
}
