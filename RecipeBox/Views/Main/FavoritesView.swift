//
//  FavoritesView.swift
//  RecipeBox
//
//  Created by Izak Bunda on 1/7/23.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You haven't added any recipes to your favorites yet!")
                .multilineTextAlignment(.center)
                .padding()
                .navigationTitle("Favorites")
        }
        .navigationViewStyle(.stack)

    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
