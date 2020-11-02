//
//  ContentView.swift
//  Currency
//
//  Created by Cloutier, Vincent on 2020-11-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Home()
                .navigationTitle("Currency Exchange")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
