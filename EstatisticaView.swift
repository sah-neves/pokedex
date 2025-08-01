//
//  estatistica.swift
//  Pokedex
//
//  Created by Sofia Melo on 01/08/25.
//

import SwiftUI

struct EstatisticaView: View {
    
    // Conta quantos Pokémon existem por tipo
    var typeCounts: [(ElementType, Int)] {
        var counts: [ElementType: Int] = [:]
        for pokemon in pokemons {
            for type in pokemon.types {
                counts[type, default: 0] += 1
            }
        }
        // Ordena do tipo mais comum para o menos comum
        return counts.sorted { $0.value > $1.value }
    }

    var body: some View {
        NavigationStack {
            List {
                // Lista os tipos e suas contagens
                ForEach(typeCounts, id: \.0) { type, count in
                    HStack {
                        Text(type.rawValue.capitalized) // Nome do tipo
                        Spacer()
                        Text("\(count)") // Quantidade
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Estatísticas") // Título da tela
        }
    }
}

struct EstatisicaView_Previews: PreviewProvider {
    static var previews: some View {
        EstatisticaView()
    }
}
