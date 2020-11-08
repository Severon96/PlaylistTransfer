//
//  URLExtension.swift
//  PlaylistTransfer
//
//  Created by Dominik Mack on 04.11.20.
//

import Foundation

extension URL {
    var isDeeplink: Bool {
        return scheme == "playlisttransfer"
    }
}
