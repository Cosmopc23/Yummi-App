//
//  RecipesView.swift
//  Yummi App
//
//  Created by Page-Croft, Cosmo (HWTA) on 06/02/2024.
//

import SwiftUI



struct Recipe {
    var name: String
    var recipeIngredients: [String]
    var isFavourite: Bool
    var rating: Int
    
    func displayRecipeIngredients() -> String{
        var tempString = ""
        for i in 0 ..< recipeIngredients.count{
            tempString.append("\n    - \(recipeIngredients[i])")
        }
        return tempString
    }
    
    func displayIfFavourite() -> String{
        return isFavourite ? "❤️" : "⚪"
    }
}



struct RecipesView: View {
    
    @State var recipes: [Recipe] = [
        Recipe(name: "Burger", recipeIngredients: ["Patty", "Burger Bun", "Lettuce", "Tomatos", "Cheese", "Pickles"], isFavourite: false, rating: 5),
        Recipe(name: "Chloramines", recipeIngredients: ["Ammonia", "Bleach"], isFavourite: false, rating: 10),
        Recipe(name: "Cornish Pasty", recipeIngredients: ["Beef", "Peas", "Potatos", "Pastry"], isFavourite: false, rating: 7),
        Recipe(name: "Fun Stuff", recipeIngredients: ["Coca Leaves", "Kerosene", "Sulfuric Acid", "Acetone"], isFavourite: false, rating: 10)
    ]
    
    @State private var selectedRecipeIndex: Int = 0
    @State private var isShowingIngredients: Bool = false

    var body: some View {
        VStack{
            
            Text("Recipe: \(recipes[selectedRecipeIndex].name)")
            
            Button("\(recipes[selectedRecipeIndex].displayIfFavourite())", action: {
                recipes[selectedRecipeIndex].isFavourite.toggle()
            })
            
            Button("Show Ingredients", action: {
                isShowingIngredients.toggle()
            })
            
            if isShowingIngredients{
                Text("\(recipes[selectedRecipeIndex].displayRecipeIngredients())")
            }
            
            Stepper("Rating: \(recipes[selectedRecipeIndex].rating)", value: $recipes[selectedRecipeIndex].rating)
                .padding(.leading,100)
                .padding(.trailing,100)
            
            
            Button("Next Ingredient", action: {
                selectedRecipeIndex = (selectedRecipeIndex + 1) % recipes.count
            })
            .padding(20)
        }
    }
}

#Preview {
    RecipesView()
}
