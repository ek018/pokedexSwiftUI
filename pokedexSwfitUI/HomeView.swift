//
//  HomeView.swift
//  pokedexSwfitUI
//
//  Created by Eko Prasetiyo on 18/03/21.
//  Copyright © 2021 coba. All rights reserved.
//

import SwiftUI

struct PokeHome: Identifiable {
    let id = UUID()
    var name: String
    var url: String
    
    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}

struct PokemonRowList: View {
    var pokeHome: PokeHome
    
    var body: some View {
        HStack {
            Text("\(pokeHome.name)")
        }
    }
}

struct HomeView: View {
    let pokemonLists = [
        PokeHome(
            name: "Bulbasaur",
            url: "https://pokeapi.co/api/v2/pokemon/1/"
        ),
        PokeHome(
            name: "Ivysaur",
            url: "https://pokeapi.co/api/v2/pokemon/2/"
        ),
        PokeHome(
            name: "Venusaur",
            url: "https://pokeapi.co/api/v2/pokemon/3/"
        ),
        PokeHome(
            name: "Charmander",
            url: "https://pokeapi.co/api/v2/pokemon/4/"
        ),
        PokeHome(
            name: "Charmeleon",
            url: "https://pokeapi.co/api/v2/pokemon/5/"
        ),
    ]
    
    var body: some View {
        List(pokemonLists) {
            pokeHome in PokemonRowList(pokeHome: pokeHome)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
