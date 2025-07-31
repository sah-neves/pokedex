//
//  poketypes.swift
//  aula6projeto
//
//  Created by Aluno Mack on 30/07/25.
//

import SwiftUI

struct poketypes: View {
    var body: some View {
        ScrollView {
            ForEach(pokemons) { pokemon in
                VStack {
                    HStack{
                        if pokemon.types.count == 1 {
                            Text(pokemon.types.first!.rawValue)
                        } else if pokemon.types.count == 2 {
                            Text(pokemon.types.first!.rawValue)
                            Text(pokemon.types.last!.rawValue)
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    poketypes()
}
