//
//  CategoriesView.swift
//  RecipeBox
//
//  Created by Izak Bunda on 1/7/23.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(Category.allCases) { category in
                    NavigationLink {
                        CategoryView(category: category)
                    } label: {
                        Text(category.rawValue + "s")
                    }

                }
            }
                .navigationTitle("Categories")
        }
        .navigationViewStyle(.stack)

    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
