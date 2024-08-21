//
//  FoodCategoryView.swift
//  Trigr Project
//
//  Created by Hitesh Rupani on 22/08/24.
//

import Foundation
import SwiftUI

struct FoodCategoryView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var food: Food
    
    var body: some View {
        VStack {
            food.image
                .resizable()
                .frame(width: 80, height: 80)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.15), radius: 10, x: 0, y: 0)
                .padding(.vertical, 10)
            
            Text(food.name)
                .font(.headline)
                .bold()
        }
        .frame(width: 100)
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

#Preview {
    FoodCategoryView(food: tempFoodCategories[0])
}
