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
    @State private var recipes = Recipe.examples
    
    //    var body: some View {
    //        VStack{
    //
    //            Text("\(recipes[selectedRecipeIndex].name)")
    //
    //            Button("\(recipes[selectedRecipeIndex].displayIfFavourite())", action: {
    //                recipes[selectedRecipeIndex].isFavourite.toggle()
    //            })
    //
    //            Button("Show Ingredients", action: {
    //                isShowingIngredients.toggle()
    //            })
    //
    //            if isShowingIngredients{
    //                Text("\(recipes[selectedRecipeIndex].displayRecipeIngredients())")
    //            }
    //
    //            Stepper("Rating: \(recipes[selectedRecipeIndex].rating)",value: $recipes[selectedRecipeIndex].rating, in: 0...10)
    //                .padding(.leading,100)
    //                .padding(.trailing,100)
    //
    //
    //
    //            Button("Next Recipe", action: {
    //                selectedRecipeIndex = (selectedRecipeIndex + 1) % recipes.count
    //            })
    //            .padding(20)
    //            Button("Delete Recipe", action:{
    //                recipes.remove(at: selectedRecipeIndex)
    //                selectedRecipeIndex = (selectedRecipeIndex + 1) % recipes.count
    //            })
    //
    //        }
    //    }
    //}
    
    var body: some View{
        List{
            Section(header: Text("     🍎 Yummi 🍎")
                .font(.largeTitle)
                .padding(20)) {
            
            
                    ForEach(0..<recipes.count,id: \.self) { i in
                    Text("\(recipes[i].name)")
                }
            }
        }
    }
}

#Preview {
    RecipesView()
}
