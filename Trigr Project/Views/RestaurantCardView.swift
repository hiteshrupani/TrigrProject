//
//  RestaurantCardView.swift
//  Trigr Project
//
//  Created by Hitesh Rupani on 21/08/24.
//

import SwiftUI

struct RestaurantCardView : View {
    
    var restaurant: Restaurant
    
    var body: some View {
        HStack {
            // profile image
            Image(restaurant.profileImage)
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .shadow(radius: 5)
                .padding(.trailing)
            
            // text info
            VStack (alignment: .leading) {
                Text (restaurant.name)
                    .font(.headline)
                    .bold()
                
                Text (restaurant.cuisine)
                    .font(.subheadline)
                    .lineLimit(1)
                
                Spacer()
                
                HStack {
                    Text("★ \(restaurant.rating, specifier: "%.1f")")
                    
                    Spacer()
                    
                    Text("$ \(restaurant.averageExpense)")
                    
                    Spacer()
                    
                    Text("\(restaurant.timeToDeliver) min")
                }
                .font(.subheadline)
                .bold()
                
            }
            .padding(.trailing)
        }
        .frame(height: 100)
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
        .padding(.leading)
        .padding(.trailing)
    }
}

#Preview {
    RestaurantCardView(restaurant: tempRestaurant[1])
}
