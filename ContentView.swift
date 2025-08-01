//
//  ContentView.swift
//  Pokedex
//
//  Created by Sofia Melo on 01/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // Primeira aba: Pokédex
            PokedexView()
                .tabItem {
                    Label("Pokedex", systemImage: "book.closed")
                }
            
            // Segunda aba: Estatísticas de tipos
            EstatisticaView()
                .tabItem {
                    Label("Estatística", systemImage: "chart.line.uptrend.xyaxis")
                }
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
