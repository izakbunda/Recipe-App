//
//  RecipeCard.swift
//  RecipeBox
//
//  Created by Izak Bunda on 1/7/23.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe // prop
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
//                  .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom) {
                        Text(recipe.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x:0, y:0)
                            .frame(maxWidth: 130)
                            .padding()
                        
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:40, height: 40, alignment: .center)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay(alignment: .bottom) {
                        Text(recipe.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x:0, y:0)
                            .frame(maxWidth: 130)
                            .padding()
                    }
                
            }
            .frame(width: 160, height: 217, alignment: .top)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color:Color.black.opacity(0.3), radius: 15, x:0, y:10)
            
        }
    }
    
    struct RecipeCard_Previews: PreviewProvider {
        static var previews: some View {
            RecipeCard(recipe: Recipe.all[0])
        }
    }
}
