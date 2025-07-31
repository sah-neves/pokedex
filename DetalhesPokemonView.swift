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
            AsyncImage(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(pokemon.id).png")) { image in
                image.image
            }
            Text(pokemon.name)
                .bold()
                
            
            Text("ID:\(pokemon.id)")
                .bold()
                
            Text("Tipos")
                .font(.headline)
            Text("HP:\(pokemon.HP)")
            
            
            Text("ATK:\(pokemon.ATK)")

            Text("DEF:\(pokemon.DEF)")

            Text("VEL:\(pokemon.Vel)")

            Text("Special:\(pokemon.Special)")

            Text("TOTAL:\(pokemon.Total)")

            
            

            Spacer()
            
        }
        .padding()
    }
}

struct DetalhesPokemonView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

