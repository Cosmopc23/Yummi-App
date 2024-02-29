//
//  ContentView.swift
//  Yummi App
//
//  Created by Page-Croft, Cosmo (HWTA) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var recipes: [Recipe]
    
    
    var body: some View {
        VStack {
            Text("🍎 Yummi 🍎")
                .font(.largeTitle)
        }
        NavigationStack{
            List{
                NavigationLink {
                    RecipesView(recipes: recipes)
                } label: {
                    Text("Recipes")
                }
            }
            .listStyle(.insetGrouped)
            Spacer()
        }
    }
}

#Preview {
    ContentView(recipes: Recipe.examples)
}
