//
//  IngredientsView.swift
//  Yummi App
//
//  Created by Page-Croft, Cosmo (HWTA) on 23/02/2024.
//

import SwiftUI

struct IngredientsView: View {
    
    @State private var selectedIngredientIndex: Int = 0
    @State private var enteredIngredientName: String = ""
    @State private var enteredQuantity: String = ""
    @State private var enteredUnit: String = ""
    @State private var enteredCategory: String = ""
    @State private var enteredExpiryDate: String = ""
    @State private var isShowingFields = false
    @State private var ingredients = Ingredient.examples
    @State private var newIngredientAlert = false
    @State private var deleteIngredientAlert = false
    
    var body: some View {
        Form {
            Section(header: Text("🍎 Yummi 🍎")
                .font(.largeTitle)
                .padding(20)){
                    
                    Text(ingredients[selectedIngredientIndex].displayDetails())
                        .padding(20)
                    
                    
                    Button("Next Ingredient", action: {
                        selectedIngredientIndex = (selectedIngredientIndex + 1) % ingredients.count
                    })
                    
                    Button("New Ingredient", action:{
                        isShowingFields = true
                    })
                    
                    if isShowingFields {
                        TextField("Name: ", text: $enteredIngredientName)
                        TextField("Quantity: ", text: $enteredQuantity)
                        TextField("Unit: ", text: $enteredUnit)
                        TextField("Category", text: $enteredCategory)
                        TextField("Expiry Date", text: $enteredExpiryDate)
                        
                        Button("Submit", action:{
                            ingredients.append(Ingredient(name: enteredIngredientName, quantity: enteredQuantity, unit: enteredUnit, category: enteredCategory, expiryDate: enteredExpiryDate ))
                            
                            selectedIngredientIndex = (ingredients).count - 1
                            
                            isShowingFields = false
                            
                            
                            newIngredientAlert.toggle()
                            
                        })
                        
                        
                    }
                    
                    Button("Delete this ingredient", action: {
                        
                        ingredients.remove(atOffsets: [selectedIngredientIndex])
                        selectedIngredientIndex = (selectedIngredientIndex + 1) % ingredients.count
                        
                        deleteIngredientAlert.toggle()
                    })
                    
                    
                    
                    
                }
                .padding()
            
        }
        .alert("New Ingredient Created", isPresented: $newIngredientAlert) {
            Button("OK", action: {})}
        .alert("Ingredient Deleted", isPresented: $deleteIngredientAlert) {
            Button("OK", action: {})}
                
        
    }
    
}
    struct IngredientsView_Previews: PreviewProvider {
        static var previews: some View {
            IngredientsView()
        }
    }
    
