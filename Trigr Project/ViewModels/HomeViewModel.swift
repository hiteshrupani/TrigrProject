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
    
    @Published var searchText: String {
        didSet {
            if searchText.isEmpty {
                restaurants = tempRestaurant
            } else {
                restaurants = tempRestaurant.filter { $0.name.lowercased().contains(searchText.lowercased()) || $0.cuisine.lowercased().contains(searchText.lowercased())}
            }
        }
    }
    @Published var isRecommendedSelected: Bool {
        didSet {
            if isRecommendedSelected {
                isPopularSelected = false
                restaurants = tempRestaurant
            }
        }
    }
    @Published var isPopularSelected: Bool {
        didSet {
            if isPopularSelected {
                isRecommendedSelected = false
                restaurants = tempRestaurant.filter { $0.isPopular }
            }
        }
    }
    
    init() {
        self.restaurants = tempRestaurant
        self.foodCategories = tempFoodCategories
        self.searchText = ""
        self.isRecommendedSelected = true
        self.isPopularSelected = false
    }
}
