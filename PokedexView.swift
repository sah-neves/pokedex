//
//  PokedexView.swift
//  pokedexSabrina
//
//  Created by Aluno Mack on 30/07/25.
//

import SwiftUI

enum ElementType: String {
    case grass
    case poison
    case fire
    case flying
    case water
    case bug
    case normal
    case electric
    case ground
    case fairy
    case psychic
    case rock
    case ice
    case dragon
    case dark
    case steel
    case fighting
    case ghost
}

struct Pokemon: Identifiable {
    var id: Int
    var name: String
    var types: [ElementType]
    var HP: Int
    var DEF: Int
    var ATK: Int
    var Special: Int
    var Vel : Int
    var Total: Int
    
    
}

let pokemons: [Pokemon] = [
    Pokemon(id: 1, name: "Bulbasaur", types: [.grass, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 2, name: "Ivysaur", types: [.grass, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 3, name: "Venusaur", types: [.grass, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 4, name: "Charmander", types: [.fire],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 5, name: "Charmeleon", types: [.fire],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 6, name: "Charizard", types: [.fire, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 7, name: "Squirtle", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 8, name: "Wartortle", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 9, name: "Blastoise", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 10, name: "Caterpie", types: [.bug],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 11, name: "Metapod", types: [.bug],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 12, name: "Butterfree", types: [.bug, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 13, name: "Weedle", types: [.bug, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 14, name: "Kakuna", types: [.bug, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 15, name: "Beedrill", types: [.bug, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 16, name: "Pidgey", types: [.normal, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 17, name: "Pidgeotto", types: [.normal, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 18, name: "Pidgeot", types: [.normal, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 19, name: "Rattata", types: [.normal],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 20, name: "Raticate", types: [.normal],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 21, name: "Spearow", types: [.normal, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 22, name: "Fearow", types: [.normal, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 23, name: "Ekans", types: [.poison]),
    Pokemon(id: 24, name: "Arbok", types: [.poison]),
    Pokemon(id: 25, name: "Pikachu", types: [.electric]),
    Pokemon(id: 26, name: "Raichu", types: [.electric]),
    Pokemon(id: 27, name: "Sandshrew", types: [.ground]),
    Pokemon(id: 28, name: "Sandslash", types: [.ground]),
    Pokemon(id: 29, name: "Nidoran-f", types: [.poison]),
    Pokemon(id: 30, name: "Nidorina", types: [.poison]),
    Pokemon(id: 31, name: "Nidoqueen", types: [.poison, .ground]),
    Pokemon(id: 32, name: "Nidoran-m", types: [.poison]),
    Pokemon(id: 33, name: "Nidorino", types: [.poison]),
    Pokemon(id: 34, name: "Nidoking", types: [.poison, .ground]),
    Pokemon(id: 35, name: "Clefairy", types: [.fairy]),
    Pokemon(id: 36, name: "Clefable", types: [.fairy]),
    Pokemon(id: 37, name: "Vulpix", types: [.fire]),
    Pokemon(id: 38, name: "Ninetales", types: [.fire]),
    Pokemon(id: 39, name: "Jigglypuff", types: [.normal, .fairy]),
    Pokemon(id: 40, name: "Wigglytuff", types: [.normal, .fairy]),
    Pokemon(id: 41, name: "Zubat", types: [.poison, .flying]),
    Pokemon(id: 42, name: "Golbat", types: [.poison, .flying]),
    Pokemon(id: 43, name: "Oddish", types: [.grass, .poison]),
    Pokemon(id: 44, name: "Gloom", types: [.grass, .poison]),
    Pokemon(id: 45, name: "Vileplume", types: [.grass, .poison]),
    Pokemon(id: 46, name: "Paras", types: [.bug, .grass]),
    Pokemon(id: 47, name: "Parasect", types: [.bug, .grass]),
    Pokemon(id: 48, name: "Venonat", types: [.bug, .poison]),
    Pokemon(id: 49, name: "Venomoth", types: [.bug, .poison]),
    Pokemon(id: 50, name: "Diglett", types: [.ground]),
    Pokemon(id: 51, name: "Dugtrio", types: [.ground]),
    Pokemon(id: 52, name: "Meowth", types: [.normal]),
    Pokemon(id: 53, name: "Persian", types: [.normal]),
    Pokemon(id: 54, name: "Psyduck", types: [.water]),
    Pokemon(id: 55, name: "Golduck", types: [.water]),
    Pokemon(id: 56, name: "Mankey", types: [.fighting]),
    Pokemon(id: 57, name: "Primeape", types: [.fighting]),
    Pokemon(id: 58, name: "Prowlithe", types: [.fire]),
    Pokemon(id: 59, name: "Prcanine", types: [.fire]),
    Pokemon(id: 60, name: "Poliwag", types: [.water]),
    Pokemon(id: 61, name: "Poliwhirl", types: [.water]),
    Pokemon(id: 62, name: "Poliwrath", types: [.water, .fighting]),
    Pokemon(id: 63, name: "Abra", types: [.psychic]),
    Pokemon(id: 64, name: "Kadabra", types: [.psychic]),
    Pokemon(id: 65, name: "Alakazam", types: [.psychic]),
    Pokemon(id: 66, name: "Machop", types: [.fighting]),
    Pokemon(id: 67, name: "Machoke", types: [.fighting]),
    Pokemon(id: 68, name: "Machamp", types: [.fighting]),
    Pokemon(id: 69, name: "Bellsprout", types: [.grass, .poison]),
    Pokemon(id: 70, name: "Weepinbell", types: [.grass, .poison]),
    Pokemon(id: 71, name: "Victreebel", types: [.grass, .poison]),
    Pokemon(id: 72, name: "Tentacool", types: [.water, .poison]),
    Pokemon(id: 73, name: "Tentacruel", types: [.water, .poison]),
    Pokemon(id: 74, name: "Geodude", types: [.rock, .ground]),
    Pokemon(id: 75, name: "Graveler", types: [.rock, .ground]),
    Pokemon(id: 76, name: "Golem", types: [.rock, .ground]),
    Pokemon(id: 77, name: "Ponyta", types: [.fire]),
    Pokemon(id: 78, name: "Rapidash", types: [.fire]),
    Pokemon(id: 79, name: "Slowpoke", types: [.water, .psychic]),
    Pokemon(id: 80, name: "Slowbro", types: [.water, .psychic]),
    Pokemon(id: 81, name: "Magnemite", types: [.electric, .steel]),
    Pokemon(id: 82, name: "Magneton", types: [.electric, .steel]),
    Pokemon(id: 83, name: "Farfetchd", types: [.normal, .flying]),
    Pokemon(id: 84, name: "Doduo", types: [.normal, .flying]),
    Pokemon(id: 85, name: "Dodrio", types: [.normal, .flying]),
    Pokemon(id: 86, name: "Seel", types: [.water]),
    Pokemon(id: 87, name: "Dewgong", types: [.water, .ice]),
    Pokemon(id: 88, name: "Grimer", types: [.poison]),
    Pokemon(id: 89, name: "Muk", types: [.poison]),
    Pokemon(id: 90, name: "Shellder", types: [.water]),
    Pokemon(id: 91, name: "Cloyster", types: [.water, .ice]),
    Pokemon(id: 92, name: "Gastly", types: [.ghost, .poison]),
    Pokemon(id: 93, name: "Haunter", types: [.ghost, .poison]),
    Pokemon(id: 94, name: "Gengar", types: [.ghost, .poison]),
    Pokemon(id: 95, name: "Onix", types: [.rock, .ground]),
    Pokemon(id: 96, name: "Drowzee", types: [.psychic]),
    Pokemon(id: 97, name: "Hypno", types: [.psychic]),
    Pokemon(id: 98, name: "Krabby", types: [.water]),
    Pokemon(id: 99, name: "Kingler", types: [.water]),
    Pokemon(id: 100, name: "Voltorb", types: [.electric]),
    Pokemon(id: 101, name: "Electrode", types: [.electric]),
    Pokemon(id: 102, name: "Exeggcute", types: [.grass, .psychic]),
    Pokemon(id: 103, name: "Exeggutor", types: [.grass, .psychic]),
    Pokemon(id: 104, name: "Cubone", types: [.ground]),
    Pokemon(id: 105, name: "Marowak", types: [.ground]),
    Pokemon(id: 106, name: "Hitmonlee", types: [.fighting]),
    Pokemon(id: 107, name: "Hitmonchan", types: [.fighting]),
    Pokemon(id: 108, name: "Lickitung", types: [.normal]),
    Pokemon(id: 109, name: "Koffing", types: [.poison]),
    Pokemon(id: 110, name: "Weezing", types: [.poison]),
    Pokemon(id: 111, name: "Rhyhorn", types: [.ground, .rock]),
    Pokemon(id: 112, name: "Rhydon", types: [.ground, .rock]),
    Pokemon(id: 113, name: "Chansey", types: [.normal]),
    Pokemon(id: 114, name: "Tangela", types: [.grass]),
    Pokemon(id: 115, name: "Kangaskhan", types: [.normal]),
    Pokemon(id: 116, name: "Horsea", types: [.water]),
    Pokemon(id: 117, name: "Seadra", types: [.water]),
    Pokemon(id: 118, name: "Goldeen", types: [.water]),
    Pokemon(id: 119, name: "Seaking", types: [.water]),
    Pokemon(id: 120, name: "Staryu", types: [.water]),
    Pokemon(id: 121, name: "Starmie", types: [.water, .psychic]),
    Pokemon(id: 122, name: "Mr-mime", types: [.psychic, .fairy]),
    Pokemon(id: 123, name: "Scyther", types: [.bug, .flying]),
    Pokemon(id: 124, name: "Jynx", types: [.ice, .psychic]),
    Pokemon(id: 125, name: "Electabuzz", types: [.electric]),
    Pokemon(id: 126, name: "Magmar", types: [.fire]),
    Pokemon(id: 127, name: "Pinsir", types: [.bug]),
    Pokemon(id: 128, name: "Tauros", types: [.normal]),
    Pokemon(id: 129, name: "Magikarp", types: [.water]),
    Pokemon(id: 130, name: "Gyarados", types: [.water, .flying]),
    Pokemon(id: 131, name: "Lapras", types: [.water, .ice]),
    Pokemon(id: 132, name: "Ditto", types: [.normal]),
    Pokemon(id: 133, name: "Eevee", types: [.normal]),
    Pokemon(id: 134, name: "Vaporeon", types: [.water]),
    Pokemon(id: 135, name: "Jolteon", types: [.electric]),
    Pokemon(id: 136, name: "Flareon", types: [.fire]),
    Pokemon(id: 137, name: "Porygon", types: [.normal]),
    Pokemon(id: 138, name: "Omanyte", types: [.rock, .water]),
    Pokemon(id: 139, name: "Omastar", types: [.rock, .water]),
    Pokemon(id: 140, name: "Kabuto", types: [.rock, .water]),
    Pokemon(id: 141, name: "Kabutops", types: [.rock, .water]),
    Pokemon(id: 142, name: "Aerodactyl", types: [.rock, .flying]),
    Pokemon(id: 143, name: "Snorlax", types: [.normal]),
    Pokemon(id: 144, name: "Articuno", types: [.ice, .flying]),
    Pokemon(id: 145, name: "Zapdos", types: [.electric, .flying]),
    Pokemon(id: 146, name: "Moltres", types: [.fire, .flying]),
    Pokemon(id: 147, name: "Dratini", types: [.dragon]),
    Pokemon(id: 148, name: "Dragonair", types: [.dragon]),
    Pokemon(id: 149, name: "Dragonite", types: [.dragon, .flying]),
    Pokemon(id: 150, name: "Mewtwo", types: [.psychic]),
    Pokemon(id: 151, name: "Mew", types: [.psychic])
]


struct PokedexView: View {
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationStack{
            List{
                ForEach(pokemons) { pokemon in
                    NavigationLink("Detalhes", destination: DetalhesPokemonView(pokemon: pokemon))
                        HStack {
                            AsyncImage(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(pokemon.id).png")) { image in
                                image.image
                            }
                            Text(pokemon.name)
                                .textCase(.uppercase)
                        }
                    }
                }
            
                .searchable(text: $searchText)
                
                
                
                //            .navigationTitle(Text("Pokemon"))
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Pokemon")
                            .font(.title.bold())
                    }
                }
            }
        }
    }



struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
//#Preview {
//    PokedexView()
//}
