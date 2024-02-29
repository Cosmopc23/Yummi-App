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
            List{
                Text("\(recipe.name)")
                
                
                Button("\(recipe.displayIfFavourite())", action: {
                    recipe.isFavourite.toggle()
                })
                
                Text("Ingredients: ")
                Text("\(recipe.displayRecipeIngredients())")
                    
                
                Stepper("Rating: \(recipe.rating)",value: $recipe.rating, in: 0...10)
                
                
                    
                //            Button("Delete Recipe", action:{
                //                recipes.remove(at: selectedRecipeIndex)
                //                selectedRecipeIndex = (selectedRecipeIndex + 1) % recipes.count
                //            })
                //            .padding(20)
                
            }
        }
    }
}


