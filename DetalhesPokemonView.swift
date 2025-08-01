//
//  SwiftUIView.swift
//  Pokedex
//
//  Created by Sofia Melo on 01/08/25.
//

import SwiftUI

struct DetalhesPokemonView: View {
    let pokemon: Pokemon

    var body: some View {
        VStack {
            Text("Detalhes:")
                .font(.system(size: 20))
            
            // Imagem do Pokémon
            AsyncImage(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(pokemon.id).png")) { image in
                image
                    .image?.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width * 1)
            }

            // Nome do Pokémon
            Text(pokemon.name.capitalized)
                .bold()
                .font(.system(size: 30))
                .padding(.top, -10)
                .padding(.bottom, 10)

            // ID do Pokémon
            Text("ID:\(pokemon.id)")
                .bold()

            Text("Tipos")
                .font(.headline)

            // Placeholder de atributos
            List{
                Text("HP")
                Text("HP")
                Text("HP")
                Text("HP")
                Text("HP")
                    
            }
            .scrollContentBackground(.hidden) // Oculta fundo padrão do sistema
            .background(Color.blue.opacity(0.1))

        }
        .padding()
    }
}

struct DetalhesPokemonView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
