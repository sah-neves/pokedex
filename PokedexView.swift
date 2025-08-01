//
//  PokedexView.swift
//  Pokedex
//
//  Created by Sofia Melo on 01/08/25.
//

import SwiftUI

// Enum com todos os tipos de Pokémon disponíveis
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

// Modelo do Pokémon
struct Pokemon: Identifiable, Hashable {
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
    Pokemon(id: 2, name: "Ivysaur", types: [.grass, .poison],HP:60,DEF:63,ATK:62,Special:80, Vel:60, Total:325),
    Pokemon(id: 3, name: "Venusaur", types: [.grass, .poison],HP:80,DEF:83,ATK:82,Special:100, Vel:80, Total:425),
    Pokemon(id: 4, name: "Charmander", types: [.fire],HP:39,DEF:43,ATK:52,Special:50, Vel:65, Total:249),
    Pokemon(id: 5, name: "Charmeleon", types: [.fire],HP:58,DEF:58,ATK:64,Special:65, Vel:80, Total:325),
    Pokemon(id: 6, name: "Charizard", types: [.fire, .flying],HP:78,DEF:78,ATK:84,Special:85, Vel:100, Total:425),
    Pokemon(id: 7, name: "Squirtle", types: [.water],HP:44,DEF:65,ATK:48,Special:50, Vel:43, Total:250),
    Pokemon(id: 8, name: "Wartortle", types: [.water],HP:59,DEF:80,ATK:63,Special:65, Vel:58, Total:325),
    Pokemon(id: 9, name: "Blastoise", types: [.water],HP:79,DEF:100,ATK:83,Special:85, Vel:58, Total:405),
    Pokemon(id: 10, name: "Caterpie", types: [.bug],HP:45,DEF:35,ATK:30,Special:20, Vel:45, Total:175),
    Pokemon(id: 11, name: "Metapod", types: [.bug],HP:50,DEF:55,ATK:20,Special:25, Vel:30, Total:180),
    Pokemon(id: 12, name: "Butterfree", types: [.bug, .flying],HP:60,DEF:50,ATK:45,Special:80, Vel:70, Total:305),
    Pokemon(id: 13, name: "Weedle", types: [.bug, .poison],HP:50,DEF:25,ATK:23,Special:75, Vel:45, Total:218),
    Pokemon(id: 14, name: "Kakuna", types: [.bug, .poison],HP:45,DEF:50,ATK:25,Special:25, Vel:35, Total:180),
    Pokemon(id: 15, name: "Beedrill", types: [.bug, .poison],HP:65,DEF:40,ATK:90,Special:45, Vel:75, Total:315),
    Pokemon(id: 16, name: "Pidgey", types: [.normal, .flying],HP:40,DEF:40,ATK:45,Special:35, Vel:56, Total:216),
    Pokemon(id: 17, name: "Pidgeotto", types: [.normal, .flying],HP:63,DEF:55,ATK:60,Special:50, Vel:71, Total:299),
    Pokemon(id: 18, name: "Pidgeot", types: [.normal, .flying],HP:83,DEF:75,ATK:80,Special:70, Vel:101, Total:409),
    Pokemon(id: 19, name: "Rattata", types: [.normal],HP:30,DEF:35,ATK:56,Special:25, Vel:72, Total:218),
    Pokemon(id: 20, name: "Raticate", types: [.normal],HP:55,DEF:60,ATK:81,Special:60, Vel:97, Total:353),
    Pokemon(id: 21, name: "Spearow", types: [.normal, .flying],HP:40,DEF:30,ATK:60,Special:31, Vel:70, Total:231),
    Pokemon(id: 22, name: "Fearow", types: [.normal, .flying],HP:65,DEF:65,ATK:90,Special:62, Vel:200, Total:482),
    Pokemon(id: 23, name: "Ekans", types: [.poison],HP:35,DEF:44,ATK:60,Special:40, Vel:55, Total:234),
    Pokemon(id: 24, name: "Arbok", types: [.poison],HP:60,DEF:69,ATK:95,Special:65, Vel:80, Total:369),
    Pokemon(id: 25, name: "Pikachu", types: [.electric],HP:35,DEF:40,ATK:55,Special:50, Vel:90, Total:270),
    Pokemon(id: 26, name: "Raichu", types: [.electric],HP:60,DEF:55,ATK:85,Special:90, Vel:110, Total:400),
    Pokemon(id: 27, name: "Sandshrew", types: [.ground],HP:50,DEF:85,ATK:75,Special:20, Vel:40, Total:270),
    Pokemon(id: 28, name: "Sandslash", types: [.ground],HP:75,DEF:110,ATK:100,Special:45, Vel:65, Total:395),
    Pokemon(id: 29, name: "Nidoran-f", types: [.poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 30, name: "Nidorina", types: [.poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 31, name: "Nidoqueen", types: [.poison, .ground],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 32, name: "Nidoran-m", types: [.poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 33, name: "Nidorino", types: [.poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 34, name: "Nidoking", types: [.poison, .ground],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 35, name: "Clefairy", types: [.fairy],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 36, name: "Clefable", types: [.fairy],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 37, name: "Vulpix", types: [.fire],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 38, name: "Ninetales", types: [.fire],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 39, name: "Jigglypuff", types: [.normal, .fairy],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 40, name: "Wigglytuff", types: [.normal, .fairy],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 41, name: "Zubat", types: [.poison, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 42, name: "Golbat", types: [.poison, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 43, name: "Oddish", types: [.grass, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 44, name: "Gloom", types: [.grass, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 45, name: "Vileplume", types: [.grass, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 46, name: "Paras", types: [.bug, .grass],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 47, name: "Parasect", types: [.bug, .grass],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 48, name: "Venonat", types: [.bug, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 49, name: "Venomoth", types: [.bug, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 50, name: "Diglett", types: [.ground],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 51, name: "Dugtrio", types: [.ground],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 52, name: "Meowth", types: [.normal],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 53, name: "Persian", types: [.normal],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 54, name: "Psyduck", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 55, name: "Golduck", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 56, name: "Mankey", types: [.fighting],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 57, name: "Primeape", types: [.fighting],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 58, name: "Prowlithe", types: [.fire],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 59, name: "Prcanine", types: [.fire],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 60, name: "Poliwag", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 61, name: "Poliwhirl", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 62, name: "Poliwrath", types: [.water, .fighting],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 63, name: "Abra", types: [.psychic],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 64, name: "Kadabra", types: [.psychic],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 65, name: "Alakazam", types: [.psychic],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 66, name: "Machop", types: [.fighting],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 67, name: "Machoke", types: [.fighting],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 68, name: "Machamp", types: [.fighting],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 69, name: "Bellsprout", types: [.grass, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 70, name: "Weepinbell", types: [.grass, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 71, name: "Victreebel", types: [.grass, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 72, name: "Tentacool", types: [.water, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 73, name: "Tentacruel", types: [.water, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 74, name: "Geodude", types: [.rock, .ground],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 75, name: "Graveler", types: [.rock, .ground],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 76, name: "Golem", types: [.rock, .ground],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 77, name: "Ponyta", types: [.fire],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 78, name: "Rapidash", types: [.fire],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 79, name: "Slowpoke", types: [.water, .psychic],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 80, name: "Slowbro", types: [.water, .psychic],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 81, name: "Magnemite", types: [.electric, .steel],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 82, name: "Magneton", types: [.electric, .steel],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 83, name: "Farfetchd", types: [.normal, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 84, name: "Doduo", types: [.normal, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 85, name: "Dodrio", types: [.normal, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 86, name: "Seel", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 87, name: "Dewgong", types: [.water, .ice],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 88, name: "Grimer", types: [.poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 89, name: "Muk", types: [.poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 90, name: "Shellder", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 91, name: "Cloyster", types: [.water, .ice],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 92, name: "Gastly", types: [.ghost, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 93, name: "Haunter", types: [.ghost, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 94, name: "Gengar", types: [.ghost, .poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 95, name: "Onix", types: [.rock, .ground],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 96, name: "Drowzee", types: [.psychic],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 97, name: "Hypno", types: [.psychic],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 98, name: "Krabby", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 99, name: "Kingler", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 100, name: "Voltorb", types: [.electric],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 101, name: "Electrode", types: [.electric],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 102, name: "Exeggcute", types: [.grass, .psychic],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 103, name: "Exeggutor", types: [.grass, .psychic],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 104, name: "Cubone", types: [.ground],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 105, name: "Marowak", types: [.ground],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 106, name: "Hitmonlee", types: [.fighting],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 107, name: "Hitmonchan", types: [.fighting],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 108, name: "Lickitung", types: [.normal],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 109, name: "Koffing", types: [.poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 110, name: "Weezing", types: [.poison],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 111, name: "Rhyhorn", types: [.ground, .rock],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 112, name: "Rhydon", types: [.ground, .rock],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 113, name: "Chansey", types: [.normal],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 114, name: "Tangela", types: [.grass],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 115, name: "Kangaskhan", types: [.normal],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 116, name: "Horsea", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 117, name: "Seadra", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 118, name: "Goldeen", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 119, name: "Seaking", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 120, name: "Staryu", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 121, name: "Starmie", types: [.water, .psychic],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 122, name: "Mr-mime", types: [.psychic, .fairy],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 123, name: "Scyther", types: [.bug, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 124, name: "Jynx", types: [.ice, .psychic],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 125, name: "Electabuzz", types: [.electric],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 126, name: "Magmar", types: [.fire],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 127, name: "Pinsir", types: [.bug],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 128, name: "Tauros", types: [.normal],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 129, name: "Magikarp", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 130, name: "Gyarados", types: [.water, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 131, name: "Lapras", types: [.water, .ice],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 132, name: "Ditto", types: [.normal],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 133, name: "Eevee", types: [.normal],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 134, name: "Vaporeon", types: [.water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 135, name: "Jolteon", types: [.electric],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 136, name: "Flareon", types: [.fire],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 137, name: "Porygon", types: [.normal],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 138, name: "Omanyte", types: [.rock, .water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 139, name: "Omastar", types: [.rock, .water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 140, name: "Kabuto", types: [.rock, .water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 141, name: "Kabutops", types: [.rock, .water],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 142, name: "Aerodactyl", types: [.rock, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 143, name: "Snorlax", types: [.normal],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 144, name: "Articuno", types: [.ice, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 145, name: "Zapdos", types: [.electric, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 146, name: "Moltres", types: [.fire, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 147, name: "Dratini", types: [.dragon],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 148, name: "Dragonair", types: [.dragon],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 149, name: "Dragonite", types: [.dragon, .flying],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 150, name: "Mewtwo", types: [.psychic],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253),
    Pokemon(id: 151, name: "Mew", types: [.psychic],HP:45,DEF:49,ATK:49,Special:65, Vel:45, Total:253)
]

// View principal da Pokédex
struct PokedexView: View {
    @State private var searchText = ""
    
    // Filtragem por nome
    var searchResults: [Pokemon] {
        if searchText.isEmpty {
            return pokemons
        } else {
            return pokemons.filter {
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            List {
                // Exibe a lista filtrada de Pokémon
                ForEach(searchResults, id: \.self) { pokemon in
                    NavigationLink(destination: DetalhesPokemonView(pokemon: pokemon)) {
                        HStack(alignment: .center, spacing: 16) {
                            // Imagem do Pokémon
                            AsyncImage(url: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/\(pokemon.id).png")) { image in
                                image.image
                            }
                            VStack(alignment: .leading, spacing: 8) {
                                // Nome do Pokémon
                                Text(pokemon.name.capitalized)
                                    .font(.headline)
                                    .padding(.top, 20)
                                
                                // Tipagem do Pokémon
                                HStack {
                                    Text("Tipagem:")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                        
                                    ZStack {
                                        RoundedRectangle(cornerSize: CGSize(width: 7, height: 7))
                                            .frame(width: 100)
                                            .foregroundColor(Color.blue.opacity(0.2))
                                        
                                        VStack {
                                            // Exibe um ou dois tipos
                                            if pokemon.types.count == 1 {
                                                Text(pokemon.types.first!.rawValue.capitalized)
                                            } else if pokemon.types.count == 2 {
                                                Text(pokemon.types.first!.rawValue.capitalized)
                                                Text(pokemon.types.last!.rawValue.capitalized)
                                            }
                                        }
                                    }
                                }
                                .padding(.vertical, 8)
                            }
                        }
                    }
                    // Barra de busca
                    .searchable(text: $searchText)
                    .navigationTitle("Pokémon")
                }
            }
        }
    }
}

// Preview para SwiftUI
struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
