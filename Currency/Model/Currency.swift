//
//  Currency.swift
//  Currency
//
//  Created by Cloutier, Vincent on 2020-11-02.
//

import SwiftUI


// For displaying data
struct Currency: Identifiable {
    
    var id = UUID().uuidString
    var currencyName: String
    var currencyValue: Double
}

var currencies = ["USD", "CAD", "AUD", "EUR", "JPY"]
