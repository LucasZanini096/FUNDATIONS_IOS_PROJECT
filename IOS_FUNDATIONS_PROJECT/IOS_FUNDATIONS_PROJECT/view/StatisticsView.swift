//
//  StatisticsView.swift
//  foundation_pokedex
//
//  Created by Diego Saragoza Da Silva on 18/03/25.
//

import SwiftUI

func backPage() -> Void {}


struct CustomBackButton: View {
    
     
    
    var body: some View {
        Button(action: backPage){
            Label("Back", systemImage: "arrowshape.backward.fill")
        }
    }
}

struct listStaticsPokemon : View {
    
    var list : [ElementType]
    
    var body: some View {
        HStack (spacing: 8) {
            ForEach(list, id: UU) {item in
                Text("\(item)").font(.system(size: 18)).bold()
            }
            
        }.padding(.vertical, 12)
    }
}

struct CardPokemonView : View {
    var body : some View {
        ZStack{
            Image("").resizable().scaledToFit().frame(height: 150)
        }.frame(width: 300, height: 300).background(Color.green).cornerRadius(20)
    }
}

struct StatisticsView : View {
    
    var pokemon : Pokemon
    
    var body : some View {
            VStack (spacing: 20) {
                    VStack (spacing: 8) {
                        Text(pokemon.name).bold()
                            .font(.system(.largeTitle))
                        Text("\(pokemon.id)")
                    }
                    CardPokemonView()
                listStaticsPokemon(list: pokemon.types)
                }
            }
        }

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView(pokemon: pokemons[0])
    }
}
