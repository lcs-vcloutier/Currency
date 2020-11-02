//
//  FetchData.swift
//  Currency
//
//  Created by Cloutier, Vincent on 2020-11-02.
//

import SwiftUI

class FetchData: ObservableObject {
   
    @Published var conversionData : [Currency] = []
    
    func fetch() {
        let url = "https://api.exchangeratesapi.io/latest?base=USD"
        
        let session = URLSession(configuration: .default)
        session.dataTask(with: URL(string: url)!) { (data, _, _) in
            
            guard let JSONData = data else{return}
            do{
                
            }
            catch{
                print(error)
            }
        }
    }
}

