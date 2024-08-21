//
//  HomeViewModel.swift
//  Trigr Project
//
//  Created by Hitesh Rupani on 22/08/24.
//

import Foundation

final class HomeViewModel: ObservableObject {
    @Published var restaurants: [Restaurant] = []
    @Published var foodCategories: [Food] = []
    
    init() {
        self.restaurants = tempRestaurant
        self.foodCategories = tempFoodCategories
    }
}
