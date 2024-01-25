//
//  ContentView.swift
//  Yummi App
//
//  Created by Page-Croft, Cosmo (HWTA) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    let ingredients: [Ingredient] = [
        Ingredient(name: "Ketchup", quantity: 100, unit: "100L", category: "Sauce", expiryDate: Date(timeIntervalSince1970: 1708858800)),
        Ingredient(name: "Mayo", quantity: 4, unit: "4L", category: "Sauce", expiryDate: Date(timeIntervalSince1970: 1708889000)),
        Ingredient(name:"Flour", quantity: 30, unit: "30kg",category: "Cooking", expiryDate: Date(timeIntervalSince1970: 1808840000))
    ]
    
    @State private var selectedIngredientIndex: Int = 0
    
    var body: some View {
        Form {
            Section(header: Text("🍎Yummi🍎")
                .font(.largeTitle)
                .padding(20))
            {
                Text(ingredients[selectedIngredientIndex].displayDetails())
                    .padding(20)
            }
            
            Button("Next Ingredient", action: {
                selectedIngredientIndex = (selectedIngredientIndex + 1) % ingredients.count
            })
            
            Button("New Ingredient", action:{
                print("")
                
                
                   })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Ingredient {
    var name: String
    var quantity: Int
    var unit: String
    var category: String
    var expiryDate: Date
    
    func displayDetails() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let formattedExpiryDate = formatter.string(from: expiryDate)
        
        return """
            Name: \(name)
            Quantity: \(quantity)
            Unit: \(unit)
            Category: \(category)
            Expiry Date: \(formattedExpiryDate)
        """
    }
}
