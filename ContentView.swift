//
//  ContentView.swift
//  aula6projeto
//
//  Created by Aluno Mack on 29/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PokedexView()
                .tabItem {
                    Label("Pokedex", systemImage: "magnifyingglass")
                }; poketypes()
            Text("Estatísticas")
                .tabItem {
                    Label("Estatísticas", systemImage: "waveform.path.ecg")
                }
        }
    }

}

#Preview {
    ContentView()
}
