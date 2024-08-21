//
//  ContentView.swift
//  Trigr Project
//
//  Created by Hitesh Rupani on 21/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Text("Food")
                .tabItem {
                    Label("Food", systemImage: "fork.knife")
                }
            
            Text("Orders")
                .tabItem {
                    Label("Orders", systemImage: "suitcase")
                }
            
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

#Preview {
    ContentView()
}
