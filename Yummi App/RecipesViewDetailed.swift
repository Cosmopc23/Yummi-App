//
//  RecipesViewDetailed.swift
//  Yummi App
//
//  Created by Page-Croft, Cosmo (HWTA) on 27/02/2024.
//

import SwiftUI

struct RecipesViewDetailed: View {
    
    @State var recipe : Recipe
    
    
    var body: some View {
        VStack{

            Text("\(recipe.name)")

            Button("\(recipe.displayIfFavourite())", action: {
                recipe.isFavourite.toggle()
            })
            .padding(.bottom,20)
            Text("Ingredients: ")
            Text("\(recipe.displayRecipeIngredients())")
                .padding(10)

            Stepper("Rating: \(recipe.rating)",value: $recipe.rating, in: 0...10)
                .padding(.leading,80)
                .padding(.trailing,80)


            .padding(20)
//            Button("Delete Recipe", action:{
//                recipes.remove(at: selectedRecipeIndex)
//                selectedRecipeIndex = (selectedRecipeIndex + 1) % recipes.count
//            })
//            .padding(20)

            
        }
    }
}
