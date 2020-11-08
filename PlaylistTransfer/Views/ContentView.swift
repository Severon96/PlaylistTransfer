//
//  ContentView.swift
//  PlatformMusicTransfer
//
//  Created by Dominik Mack on 04.11.20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var activeTab: Tab = .home
    
    var body: some View {
        TabView(selection: $activeTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.circle")
                }
                .tag(Tab.home)
            Settings()
                .tabItem {
                    Image(systemName: "gear")
                }
                .tag(Tab.settings)
        }
    }
}

enum Tab: String, Codable {
    case home
    case settings
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
