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
                
                // recommended / popular tab
                
                
                // restaurants
                ForEach(viewModel.restaurants) { restaurant in
                    RestaurantCardView(restaurant: restaurant)
                }
                
            }
            // tabs
        }
        .background(Color.secondary.opacity(0.2))
        
    }
}

#Preview {
    HomeView()
}
