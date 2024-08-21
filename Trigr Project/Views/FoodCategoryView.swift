//
//  FoodCategoryView.swift
//  Trigr Project
//
//  Created by Hitesh Rupani on 22/08/24.
//

import Foundation
import SwiftUI

struct FoodCategoryView: View {
    
    var food: Food
    
    var body: some View {
        VStack {
            food.image
                .resizable()
                .frame(width: 80, height: 80)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .shadow(radius: 5 , x: 0, y: 0)
                .padding(.bottom, 10)
            
            Text(food.name)
                .font(.headline)
                .bold()
        }
        .frame(width: 100)
//        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

#Preview {
    FoodCategoryView(food: tempFoodCategories[0])
}
