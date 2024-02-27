//
//  Recipes.swift
//  Yummi App
//
//  Created by Page-Croft, Cosmo (HWTA) on 23/02/2024.
//

import Foundation


struct Recipe: Hashable {
    var name: String
    var recipeIngredients: [String]
    var isFavourite: Bool
    var rating: Int
    
    func displayRecipeIngredients() -> String{
        var tempString = ""
        for i in 0 ..< recipeIngredients.count{
            if i != recipeIngredients.count - 1{
                tempString.append("    - \(recipeIngredients[i]) \n")
            } else{
                tempString.append("    - \(recipeIngredients[i])")
            }
        }
        return tempString
    }
    func displayIfFavourite() -> String{
        return isFavourite ? "❤️" : "⚪"
    }
    
    
    
#if DEBUG
    
    static var examples =
    [
        Recipe(name: "Burger", recipeIngredients: ["Patty", "Burger Bun", "Lettuce", "Tomatos", "Cheese", "Pickles"], isFavourite: false, rating: 5),
        Recipe(name: "Stinky Stuff", recipeIngredients: ["Ammonia", "Bleach"], isFavourite: false, rating: 10),
        Recipe(name: "Cornish Pasty", recipeIngredients: ["Beef", "Peas", "Potatos", "Pastry"], isFavourite: false, rating: 7),
        Recipe(name: "No No Powda", recipeIngredients: ["Coca Leaves", "Kerosene", "Sulfuric Acid", "Acetone"], isFavourite: false, rating: 10),
        Recipe(name: "Spaghetti Carbonara", recipeIngredients: ["Spaghetti", "Pancetta", "Eggs", "Parmesan Cheese", "Black Pepper", "Garlic"], isFavourite: false, rating: 9),
        Recipe(name: "Chicken Alfredo", recipeIngredients: ["Chicken Breast", "Fettuccine", "Heavy Cream", "Parmesan Cheese", "Garlic", "Butter"], isFavourite: false, rating: 8),
        Recipe(name: "Vegetable Stir-Fry", recipeIngredients: ["Broccoli", "Bell Peppers", "Carrots", "Snap Peas", "Soy Sauce", "Garlic"], isFavourite: false, rating: 7),
        Recipe(name: "Beef Tacos", recipeIngredients: ["Ground Beef", "Taco Shells", "Lettuce", "Tomatoes", "Cheddar Cheese", "Salsa"], isFavourite: false, rating: 6),
        Recipe(name: "Mushroom Risotto", recipeIngredients: ["Arborio Rice", "Mushrooms", "Vegetable Broth", "Parmesan Cheese", "Onion", "White Wine"], isFavourite: false, rating: 8),
        Recipe(name: "Salmon with Lemon-Dill Sauce", recipeIngredients: ["Salmon Fillets", "Lemon", "Dill", "Butter", "Garlic", "White Wine"], isFavourite: false, rating: 9)
    ]
    
    
#endif
    
}
