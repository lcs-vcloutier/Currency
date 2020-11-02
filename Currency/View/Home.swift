//
//  Home.swift
//  Currency
//
//  Created by Cloutier, Vincent on 2020-11-02.
//

import SwiftUI

struct Home: View {
    @StateObject var viewModel = FetchData()
    var body: some View {
        ScrollView {
            
            // Fetched Data
            LazyVStack(alignment: .leading, spacing: 15, content: {
                
                ForEach(viewModel.conversionData) {rate in
                    
                    Text(rate.currencyName)
                }
            })
        }
    }
}
