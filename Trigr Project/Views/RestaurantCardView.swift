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
//                .shadow(color: Color.black.opacity(0.15),radius: 10, x: 0, y: 0)
                .padding(.trailing)
            
            // text info
            VStack (alignment: .leading) {
                Text (restaurant.name)
                    .font(.headline)
                    .bold()
                
                Text (restaurant.cuisine)
                    .font(.subheadline)
                    .lineLimit(1)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                HStack {
                    Text("\(Image(systemName: "star.fill")) \(restaurant.rating, specifier: "%.1f")")
                    
                    Spacer()
                    
                    Text("$ \(restaurant.averageExpense)")
                    
                    Spacer()
                    
                    Text("\(restaurant.timeToDeliver) min")
                }
                .font(.subheadline)
            }
            .padding(.trailing)
        }
        .frame(height: 100)
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}

struct RestaurantCardView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantCardView(restaurant: tempRestaurant[0])
            .previewLayout(.sizeThatFits)
    }
}
