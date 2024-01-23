//
//  ContentView.swift
//  Yummi App
//
//  Created by Page-Croft, Cosmo (HWTA) on 23/01/2024.
//

import SwiftUI



struct ContentView: View {
    let ketchup = Ingredient(name: "Ketchup", quantity: 100, unit: "100L", category: "sauce", expiryDate: Date(timeIntervalSince1970: 1708858800))
    
    let mayo = Ingredient(name: "Mayo", quantity: 4, unit: "4L", category: "sauce", expiryDate: Date(timeIntervalSince1970: 1708859000))
    
    
    var selectedIngredient: Int = 0
    
    var body: some View {
        VStack {
            Text("🍎Yummi🍎")
            .padding(20)
            Text(ketchup.displayDetails())
            
                .padding(20)
            Button("Next Ingredient", action: {
                
            })
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


struct Ingredient {
    
    var name: String
    var quantity: Int
    var unit: String
    var category: String
    var expiryDate: Date
    
    func displayDetails() -> String{
     
        
        
        let details = """
    Name: \(name)
    Quantity: \(quantity)
    Unit: \(unit)
    Category: \(category)
    Expiry Date: \(expiryDate)
"""
        
        return details
    }
    
    
}

