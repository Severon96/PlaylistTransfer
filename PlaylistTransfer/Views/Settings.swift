//
//  Settings.swift
//  PlaylistTransfer
//
//  Created by Dominik Mack on 05.11.20.
//

import SwiftUI

struct Settings: View {
    
    let url = NetworkUtils.generateAuthenticationUrl()
    
    var body: some View {
        Button(action: {
            UIApplication.shared.open(url!)
        }, label: {
            Text("Authenticate Spotify")
        })
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
