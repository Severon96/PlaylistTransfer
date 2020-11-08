//
//  PlaylistTransfer.swift
//  PlaylistTransfer
//
//  Created by Dominik Mack on 04.11.20.
//

import SwiftUI

@main
struct PlaylistTransfer: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .onOpenURL(perform: { url in
                print(url)
            })            
        }
    }
}
