//
//  HomeView.swift
//  RecipeBox
//
//  Created by Izak Bunda on 1/7/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesViewModel: RecipesViewModel
    
    var body: some View {
        NavigationView {
            ScrollView{
                RecipeList(recipes: recipesViewModel.recipes)

            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
