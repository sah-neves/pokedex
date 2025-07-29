//
//  ContentView.swift
//  sabrina neves
//
//  Created by Mack Aluno on 29/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            pokedex()
                .tabItem {
                    Label("Pokedex", systemImage: "book.closed")
                }
            
            estatistica()
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

