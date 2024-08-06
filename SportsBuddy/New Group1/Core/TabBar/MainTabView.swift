//
//  MainTabView.swift
//  SportsBuddy
//
//  Created by Dayan Abdulla on 7/27/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem { Label("Locate", systemImage: "magnifyingglass") }
            
            WishlistsView()
                .tabItem { Label("Create", systemImage: "plus") }

            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }

        }
    }
}

#Preview {
    MainTabView()
}
