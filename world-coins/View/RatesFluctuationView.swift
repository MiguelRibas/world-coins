//
//  RatesFluctuationView.swift
//  world-coins
//
//  Created by UserTQI on 13/10/24.
//

import SwiftUI

struct Fluctuation: Identifiable {
    let id = UUID()
    var symbol: String
    var change: Double
    var changePct: Double
    var endRate: Double
}

class FluctuationViewModel: ObservableObject {
    @Published var fluctuations: [Fluctuation] = [
        Fluctuation(symbol: "USD", change: 0.0008, changePct: 0.4175, endRate: 0.18857),
        Fluctuation(symbol: "EUR", change: 0.0003, changePct: 0.1651, endRate: 0.181353),
        Fluctuation(symbol: "GBP", change: -0.0001, changePct: 00.0403, endRate: 0.158915)
    ]
}

struct RatesFluctuationView: View {
    
    @StateObject var viewModel = FluctuationViewModel()
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .background(.red)
            .searchable(text: $searchText)
            .navigationTitle("Converção de moedas")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    print("Filtrar moedas")
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
            }
        }
    }
}

struct RatesFluctuationView_Previews: PreviewProvider {
    static var previews: some View {
        RatesFluctuationView()
    }
}
