//
//  HomeViewModel.swift
//  Trigr Project
//
//  Created by Hitesh Rupani on 22/08/24.
//

import Foundation

final class HomeViewModel: ObservableObject {
    @Published var currentAddress: String
    
    @Published var restaurants: [Restaurant] = []
    @Published var foodCategories: [Food] = []
    
    @Published var searchText: String {
        didSet {
            if searchText.isEmpty {
                restaurants = tempRestaurant
            } else {
                restaurants = tempRestaurant.filter { $0.name.localizedCaseInsensitiveContains(searchText) || $0.cuisine.localizedCaseInsensitiveContains(searchText) }
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
        self.currentAddress = savedAddresses[0]
        self.restaurants = tempRestaurant
        self.foodCategories = tempFoodCategories
        self.searchText = ""
        self.isRecommendedSelected = true
        self.isPopularSelected = false
    }
}
