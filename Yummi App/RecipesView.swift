//
//  RecipesView.swift
//  Yummi App
//
//  Created by Page-Croft, Cosmo (HWTA) on 06/02/2024.
//

import SwiftUI


struct RecipesView: View {
    
    @State private var selectedRecipeIndex: Int = 0
    @State private var isShowingIngredients: Bool = false
    @State var recipes: [Recipe]
    
    
    var body: some View{
        NavigationStack{
            Section(header: Text("     🍎 Yummi 🍎")
                .font(.largeTitle)
                .padding(20)) {
                    
                    
                    ForEach(recipes ,id: \.self) { recipe in
                        NavigationLink {
                            RecipesViewDetailed(recipe: recipe)
                        } label: {
                            Text("\(recipe.name)")
                        }
                    }
                    .padding(3)
                }
        }
    }
}

#Preview {
    RecipesView(recipes: Recipe.examples)
}
