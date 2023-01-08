//
//  RecipeView.swift
//  RecipeBox
//
//  Created by Izak Bunda on 1/7/23.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe

    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: .infinity, height: 300, alignment: .center)
                    .clipped()
//                    .mask(LinearGradient(gradient: Gradient(stops: [
//                                .init(color: .white, location: 0),
//                                .init(color: .clear, location: 1),
//                                .init(color: .white, location: 1),
//                                .init(color: .clear, location: 1)
//                            ]), startPoint: .top, endPoint: .bottom))                
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:100, height: 300, alignment: .center)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            .frame(height: 300)
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                VStack(alignment: .leading, spacing: 30) {
                    if !recipe.description.isEmpty {
                        Text(recipe.description)
                    }
                    if !recipe.description.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Ingedients")
                                .font(.headline)
                            
                            Text(recipe.ingredients)
                        }
                    }
                    if !recipe.description.isEmpty {
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Directions")
                                .font(.headline)
                            
                            Text(recipe.directions)
                        }
                    }
                }
            }
            .frame(width: .infinity, alignment: .center) // alignment: .leading
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}


struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
