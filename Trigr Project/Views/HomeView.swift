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
        VStack (alignment: .leading) {
            // MARK: - Address
            VStack (alignment: .leading) {
                Text("Deliver to")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Menu {
                    ForEach(savedAddresses, id:\.self) { address in
                        Button {
                            viewModel.currentAddress = address
                        } label: {
                            Text(address)
                        }
                    }
                } label: {
                    Text(viewModel.currentAddress)
                        .font(.title3)
                        .bold()
                    
                    Spacer()
                    Image(systemName: "chevron.down")
                        .bold()
                }
            }
            .padding(.horizontal)
            
            // MARK: - Search
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                TextField("Search for restaurants, cuisines, or dishes", text: $viewModel.searchText)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
            }
            .padding()
            
            ScrollView {
                if viewModel.searchText == "" {
                    
                    // MARK: - Food Categories
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack (spacing: 5){
                            ForEach(viewModel.foodCategories) { food in
                                FoodCategoryView(food: food)
                            }
                        }
                    }
                    .padding(.bottom)
                    .padding(.leading)
                    
                    // MARK: - Tabs
                    
                    HStack {
                        
                        // Recommended Button
                        Button {
                            viewModel.isRecommendedSelected = true
                        } label: {
                            Text("Recommended")
                                .font(.headline)
                                .bold()
                                .padding(.horizontal)
                                .padding(.vertical, 5)
                                .foregroundStyle(viewModel.isRecommendedSelected ? Color.primary : Color.gray)
                        }
                        
                        // Popular Button
                        Button {
                            viewModel.isPopularSelected = true
                        } label: {
                            Text("Popular")
                                .font(.headline)
                                .bold()
                                .padding(.horizontal)
                                .padding(.vertical, 5)
                                .foregroundStyle(viewModel.isPopularSelected ? Color.primary : Color.gray)
                            }
                        
                        Spacer()
                    }
                    .padding()
                }
                // MARK: - Restaurants
                
                VStack {
                    ForEach(viewModel.restaurants) { restaurant in
                        RestaurantCardView(restaurant: restaurant)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
