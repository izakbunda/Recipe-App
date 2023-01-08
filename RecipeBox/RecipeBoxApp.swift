//
//  RecipeBoxApp.swift
//  RecipeBox
//
//  Created by Izak Bunda on 1/7/23.
//

import SwiftUI

@main
struct RecipeBoxApp: App {
    @StateObject var recipesViewModel = RecipesViewModel() // follows the lifecycle of the app
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
