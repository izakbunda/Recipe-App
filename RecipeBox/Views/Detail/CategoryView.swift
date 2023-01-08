//
//  CategoryView.swift
//  RecipeBox
//
//  Created by Izak Bunda on 1/7/23.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipesViewModel: RecipesViewModel
    var category: Category
    
    // logic for filtering
    var recipes: [Recipe] {
        return recipesViewModel.recipes.filter{ $0.category == category.rawValue }
    }
    var body: some View {
        ScrollView{
            RecipeList(recipes: recipes)
        } // $0 -> wildcard
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.breakfast)
            .environmentObject(RecipesViewModel())
    }
}
