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

struct StatisticsView : View {
    var body : some View {
        NavigationStack {
            VStack(alignment: .leading){
                HStack (alignment: .center, spacing: 15) {
                    CustomBackButton()
                    Text("Venusaur").font(.system(size: 28))
                }
            }
        }
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
