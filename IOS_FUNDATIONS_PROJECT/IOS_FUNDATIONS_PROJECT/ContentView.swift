//
//  ContentView.swift
//  IOS_FUNDATIONS_PROJECT
//
//  Created by Aluno Mack on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PokedexView()
                .tabItem {
                    Label("Pokedex", systemImage: "magazine")
                }
            
            StatisticsView().tabItem {
                Label("Estatísticas", systemImage: "chart.xyaxis.line")
            }
//            Tab("Pokedex", systemImage : "magazine") {
//                PokedexView()
//            }
//            Tab("Estatisticas", systemImage : "chart.xyaxis.line") {
//                StatisticsView()
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
