//
//  HomeView.swift
//  Trigr Project
//
//  Created by Hitesh Rupani on 21/08/24.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            // address
            
            // search bar
            
            
            ScrollView {
                // food category
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (spacing: 5){
                        ForEach(viewModel.foodCategories) { food in
                            FoodCategoryView(food: food)
                        }
                    }
                }
                .padding(.leading)
                
                // recommended / popular tab
                
                
                // restaurants
                VStack {
                    ForEach(viewModel.restaurants) { restaurant in
                        RestaurantCardView(restaurant: restaurant)
                    }
                }
                
                
            }
            // tabs
        }
        .background(Color.white.ignoresSafeArea())
        
    }
}

#Preview {
    HomeView()
}
