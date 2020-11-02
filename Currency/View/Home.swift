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
        VStack{
            if viewModel.conversionData.isEmpty{
                ProgressView()
            }
            else {
                ScrollView {
                    
                    // Fetched Data
                    LazyVStack(alignment: .leading, spacing: 15, content: {
                        
                        ForEach(viewModel.conversionData) {rate in
                            
                            HStack(spacing: 15){
                                
                                Text(getFlag(currency: rate.currencyName))
                                    .font(.system(size: 65))
                                VStack(alignment: .leading, spacing: 5, content: {
                                    Text(rate.currencyName)
                                        .font(.title)
                                        .fontWeight(.bold)
                                    Text("\(rate.currencyValue)")
                                        .fontWeight(.heavy)
                                })
                            }
                            .padding(.horizontal)
                        }
                    })
                    .padding(.top)
                }
            }
        }
    }
    // Getting currency flag by currency name
    func getFlag(currency: String) -> String{
        var base = 127397
        var scalar = String.UnicodeScalarView()
        for i in currency.utf16 {
             
            scalar.append(UnicodeScalar(base + Int(i))!)
        }
        return String(scalar)
    }
}
