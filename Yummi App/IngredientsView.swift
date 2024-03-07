//
//  IngredientsView.swift
//  Yummi App
//
//  Created by Page-Croft, Cosmo (HWTA) on 23/02/2024.
//

import SwiftUI

struct IngredientsView: View {
    @State var ingredients: [Ingredient]
    var body: some View {
        NavigationStack{
            List{
                ForEach(ingredients ,id: \.self) { ingredient in
                    NavigationLink {
                        IngredientsViewDetailed()
                    } label: {
                        Text("\(ingredient.name)")
                    }
                }
            }
            .listStyle(.insetGrouped)
                            
        }
        
        
        
    }
}
    

struct IngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsView(ingredients: Ingredient.examples)
    }
}
    
