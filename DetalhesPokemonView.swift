//
//  DetalhesPokemonView.swift
//  caiopoke
//
//  Created by Aluno Mack on 31/07/25.
//

import SwiftUI

struct DetalhesPokemonView: View {
    let pokemon: Pokemon
    var body: some View {
        VStack{
            Text("Detalhes:")
                .font(.system(size: 20))
            // Imagem do Pokémon
            AsyncImage(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(pokemon.id).png")) { image in
                image
                    .image?.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width * 1.2)
            }
            // Nome do Pokémon
            Text(pokemon.name)
                .bold()
                .foregroundColor(.black)
                .padding(.top , -30)
                
            // ID do Pokémon
            Text("ID:\(pokemon.id)")
                .bold()
                .foregroundColor(.gray)
        
            
            List{
                // Placeholder de atributos
                Text("HP:\(pokemon.HP)")
                Text("ATK:\(pokemon.ATK)")
                Text("DEF:\(pokemon.DEF)")
                Text("VEL:\(pokemon.Vel)")
                Text("Special:\(pokemon.Special)")
                
                Text("TOTAL:\(pokemon.Total)")
            }
            .scrollContentBackground(.hidden) // Oculta fundo padrão do sistema
            .background(Color.blue.opacity(0.1))
            .cornerRadius(12)
            
        }
        .padding()
    }
}

struct DetalhesPokemonView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
