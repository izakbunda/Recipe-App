//
//  RecipeModel.swift
//  RecipeBox
//
//  Created by Izak Bunda on 1/7/23.
//

// MVVM : Model View ViewModel

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue } // uniquely identify each case of the enum Category
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case sald = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue // custom type using the string itself and not the case
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(name: "Crispy Fried Eggs",
               image: "https://cookieandkate.com/images/2018/09/crispy-fried-egg-recipe.jpg",
               description: "Simple and easy way to fry an egg.",
               ingredients: "1 egg \n3 tbsp. extra virgin olive oil \n1 tbsp chili oil (optional)",
               directions: "Place a stainless steel pan on high heat and heat oil until it is beginning to shimmer and very liquid. \nCrack the egg into the pan and leave for one minute. \n Carefully, start spooning the hot oil onto the egg until all the white becomes opaque and cooked. \nServe over a steaming bowl of rice and drizzle with chili oil. \nEnjoy!",
               category: "Breakfast",
               datePublished: "2022-01-02",
               url: "www.google.com"),
        Recipe(name: "Soggy Fried Eggs",
               image: "https://cookieandkate.com/images/2018/09/crispy-fried-egg-recipe.jpg",
               description: "Simple and easy way to fry an egg.",
               ingredients: "1 egg \n3 tbsp. extra virgin olive oil \n1 tbsp chili oil (optional)",
               directions: "Place a stainless steel pan on high heat and heat oil until it is beginning to shimmer and very liquid. \nCrack the egg into the pan and leave for one minute. \n Carefully, start spooning the hot oil onto the egg until all the white becomes opaque and cooked. \nServe over a steaming bowl of rice and drizzle with chili oil. \nEnjoy!",
               category: "Breakfast",
               datePublished: "2022-01-02",
               url: "www.google.com"),
        Recipe(name: "Scrambled Eggs",
               image: "https://cookieandkate.com/images/2018/09/crispy-fried-egg-recipe.jpg",
               description: "Simple and easy way to fry an egg.",
               ingredients: "1 egg \n3 tbsp. extra virgin olive oil \n1 tbsp chili oil (optional)",
               directions: "Place a stainless steel pan on high heat and heat oil until it is beginning to shimmer and very liquid. \nCrack the egg into the pan and leave for one minute. \n Carefully, start spooning the hot oil onto the egg until all the white becomes opaque and cooked. \nServe over a steaming bowl of rice and drizzle with chili oil. \nEnjoy!",
               category: "Breakfast",
               datePublished: "2022-01-02",
               url: "www.google.com"),
        Recipe(name: "Hard Boiled Eggs",
               image: "https://cookieandkate.com/images/2018/09/crispy-fried-egg-recipe.jpg",
               description: "Simple and easy way to fry an egg.",
               ingredients: "1 egg \n3 tbsp. extra virgin olive oil \n1 tbsp chili oil (optional)",
               directions: "Place a stainless steel pan on high heat and heat oil until it is beginning to shimmer and very liquid. \nCrack the egg into the pan and leave for one minute. \n Carefully, start spooning the hot oil onto the egg until all the white becomes opaque and cooked. \nServe over a steaming bowl of rice and drizzle with chili oil. \nEnjoy!",
               category: "Breakfast",
               datePublished: "2022-01-02",
               url: "www.google.com")
    ]
}
