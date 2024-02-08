//
//  Store Stuff.swift
//  Yummi App
//
//  Created by Page-Croft, Cosmo (HWTA) on 08/02/2024.
//

import Foundation


struct Ingredient {
    var name: String
    var quantity: String
    var unit: String
    var category: String
    var expiryDate: String
    
    func displayDetails() -> String {
        
        return """
            Name: \(name)
            Quantity: \(quantity)
            Unit: \(unit)
            Category: \(category)
            Expiry Date: \(expiryDate)
        """
    }
    
    
    
    
#if DEBUG
    
    
    static var examples =
    [
        Ingredient(name: "Patty", quantity: "1", unit: "piece", category: "Cooking", expiryDate: "15/05/24"),
        Ingredient(name: "Burger Bun", quantity: "1", unit: "piece", category: "Bread", expiryDate: "28/06/24"),
        Ingredient(name: "Lettuce", quantity: "1", unit: "head", category: "Vegetable", expiryDate: "10/04/24"),
        Ingredient(name: "Tomatoes", quantity: "2", unit: "pieces", category: "Vegetable", expiryDate: "05/03/24"),
        Ingredient(name: "Cheese", quantity: "100", unit: "grams", category: "Dairy", expiryDate: "19/07/24"),
        Ingredient(name: "Pickles", quantity: "5", unit: "pieces", category: "Pickled", expiryDate: "03/06/24"),
        Ingredient(name: "Ammonia", quantity: "500", unit: "ml", category: "Cleaning", expiryDate: "21/08/24"),
        Ingredient(name: "Bleach", quantity: "1", unit: "bottle", category: "Cleaning", expiryDate: "09/05/24"),
        Ingredient(name: "Beef", quantity: "500", unit: "grams", category: "Meat", expiryDate: "12/09/24"),
        Ingredient(name: "Peas", quantity: "250", unit: "grams", category: "Vegetable", expiryDate: "30/03/24"),
        Ingredient(name: "Potatoes", quantity: "1", unit: "kilogram", category: "Vegetable", expiryDate: "17/07/24"),
        Ingredient(name: "Pastry", quantity: "1", unit: "sheet", category: "Baking", expiryDate: "02/06/24"),
        Ingredient(name: "Coca Leaves", quantity: "10", unit: "grams", category: "Herb", expiryDate: "25/08/24"),
        Ingredient(name: "Kerosene", quantity: "1", unit: "gallon", category: "Fuel", expiryDate: "14/04/24"),
        Ingredient(name: "Sulfuric Acid", quantity: "100", unit: "ml", category: "Chemical", expiryDate: "06/10/24"),
        Ingredient(name: "Acetone", quantity: "200", unit: "ml", category: "Chemical", expiryDate: "11/07/24"),
        Ingredient(name: "Spaghetti", quantity: "500", unit: "grams", category: "Pasta", expiryDate: "03/05/24"),
        Ingredient(name: "Pancetta", quantity: "200", unit: "grams", category: "Meat", expiryDate: "29/06/24"),
        Ingredient(name: "Eggs", quantity: "6", unit: "pieces", category: "Dairy", expiryDate: "23/09/24"),
        Ingredient(name: "Parmesan Cheese", quantity: "200", unit: "grams", category: "Dairy", expiryDate: "18/07/24"),
        Ingredient(name: "Black Pepper", quantity: "50", unit: "grams", category: "Spice", expiryDate: "07/08/24"),
        Ingredient(name: "Garlic", quantity: "3", unit: "cloves", category: "Vegetable", expiryDate: "01/06/24"),
        Ingredient(name: "Chicken Breast", quantity: "500", unit: "grams", category: "Meat", expiryDate: "14/10/24"),
        Ingredient(name: "Fettuccine", quantity: "500", unit: "grams", category: "Pasta", expiryDate: "08/11/24"),
        Ingredient(name: "Heavy Cream", quantity: "200", unit: "ml", category: "Dairy", expiryDate: "30/09/24"),
        Ingredient(name: "Butter", quantity: "250", unit: "grams", category: "Dairy", expiryDate: "20/06/24"),
        Ingredient(name: "Broccoli", quantity: "300", unit: "grams", category: "Vegetable", expiryDate: "13/05/24"),
        Ingredient(name: "Bell Peppers", quantity: "2", unit: "pieces", category: "Vegetable", expiryDate: "09/08/24"),
        Ingredient(name: "Carrots", quantity: "500", unit: "grams", category: "Vegetable", expiryDate: "27/09/24"),
        Ingredient(name: "Snap Peas", quantity: "150", unit: "grams", category: "Vegetable", expiryDate: "16/07/24"),
        Ingredient(name: "Soy Sauce", quantity: "250", unit: "ml", category: "Condiment", expiryDate: "04/06/24"),
        Ingredient(name: "Ground Beef", quantity: "500", unit: "grams", category: "Meat", expiryDate: "11/10/24"),
        Ingredient(name: "Taco Shells", quantity: "12", unit: "pieces", category: "Bread", expiryDate: "19/07/24"),
        Ingredient(name: "Lettuce", quantity: "1", unit: "head", category: "Vegetable", expiryDate: "22/08/24"),
        Ingredient(name: "Tomatoes", quantity: "500", unit: "grams", category: "Vegetable", expiryDate: "28/04/24"),
        Ingredient(name: "Cheddar Cheese", quantity: "200", unit: "grams", category: "Dairy", expiryDate: "05/06/24"),
        Ingredient(name: "Salsa", quantity: "250", unit: "ml", category: "Condiment", expiryDate: "13/09/24"),
        Ingredient(name: "Arborio Rice", quantity: "500", unit: "grams", category: "Grain", expiryDate: "30/05/24"),
        Ingredient(name: "Mushrooms", quantity: "200", unit: "grams", category: "Vegetable", expiryDate: "17/08/24"),
        Ingredient(name: "Vegetable Broth", quantity: "1", unit: "liter", category: "Soup", expiryDate: "03/11/24"),
        Ingredient(name: "Onion", quantity: "3", unit: "pieces", category: "Vegetable", expiryDate: "07/07/24"),
        Ingredient(name: "White Wine", quantity: "750", unit: "ml", category: "Alcohol", expiryDate: "12/06/24"),
        Ingredient(name: "Salmon Fillets", quantity: "4", unit: "pieces", category: "Seafood", expiryDate: "25/08/24"),
        Ingredient(name: "Lemon", quantity: "3", unit: "pieces", category: "Fruit", expiryDate: "19/09/24"),
        Ingredient(name: "Dill", quantity: "30", unit: "grams", category: "Herb", expiryDate: "21/10/24")
    ]
    
#endif
    
}
