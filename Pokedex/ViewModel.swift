//
//  ViewModel.swift
//  Pokedex
//
//  Created by Matteo Gentili on 13/05/23.
//

import Foundation
import PokemonAPI

class ViewModel: ObservableObject {
    
    init(){
        load()
    }
    
    
    func load() {
            
            
            
        PokemonAPI().pokemonService.fetchPokemonList { result in
            switch result {
            case .success(let list):
                list.results?.forEach { a in
                    print(a.name)
                     
                }
                print(list)
            case .failure(let failure):
                print(failure)
            }
        }
    }
}
