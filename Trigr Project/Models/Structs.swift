//
//  Structs.swift
//  Trigr Project
//
//  Created by Hitesh Rupani on 21/08/24.
//

import Foundation
import SwiftUI

struct Restaurant: Identifiable {
    var id = UUID()
    
    var profileImage: String
    var name: String
    var cuisine: String
    var rating: Double
    var averageExpense: String
    var timeToDeliver: Int
}

struct Food: Identifiable {
    var id = UUID()
    
    var image: Image
    var name: String
}

var tempRestaurant: [Restaurant] = [
    Restaurant(profileImage: "burgerKing", name: "Burger King", cuisine: "Burgers, American", rating: 4.4, averageExpense: "10 - 15", timeToDeliver: 25),
    Restaurant(profileImage: "dominos", name: "Domino's Pizza", cuisine: "Pizzas, Italian, Pastas, Desserts", rating: 4.1, averageExpense: "12 - 15", timeToDeliver: 30),
    Restaurant(profileImage: "pizzaHut", name: "Pizza Hut", cuisine: "Pizzas", rating: 3.8, averageExpense: "20 - 25", timeToDeliver: 50),
    Restaurant(profileImage: "wowchina", name: "Wow! China", cuisine: "Chinese, Tibetan, Snacks, Continental", rating: 3.9, averageExpense: "8 - 10", timeToDeliver: 55),
    Restaurant(profileImage: "cakePlace", name: "Cake World", cuisine: "Bakery, Cakes", rating: 4.0, averageExpense: "12 - 15", timeToDeliver: 40),
    Restaurant(profileImage: "dosaPlace", name: "Sagar Ratna", cuisine: "South Indian, North Indian, Dosa", rating: 4.1, averageExpense: "10 - 20", timeToDeliver: 35),
    Restaurant(profileImage: "noodlesPlace", name: "Chows Kitchen", cuisine: "Chinese, Thai, Asian", rating: 4.3, averageExpense: "20 - 25", timeToDeliver: 30)
]

var tempFoodCategories: [Food] = [
    Food(image: Image(.burger), name: "Burgers"),
    Food(image: Image(.pizza), name: "Pizzas"),
    Food(image: Image(.cake), name: "Cakes"),
    Food(image: Image(.dosa), name: "Dosas"),
    Food(image: Image(.noodles), name: "Noodles"),
]
