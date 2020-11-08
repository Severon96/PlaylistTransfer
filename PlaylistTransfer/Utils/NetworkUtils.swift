//
//  NetworkUtils.swift
//  PlaylistTransfer
//
//  Created by Dominik Mack on 04.11.20.
//

import Foundation
import CryptoKit

class NetworkUtils {
    
    private static let clientId: String = "27b6d7ebbc314710b3aecebbf9d4782f"
    private static let redirectUri: String = "playlisttransfer://spotifyauthentication/"
    private static let responseStype: String = "code"
    private static let codeChallengeMethod: String = "S256"
    
    static func generateAuthenticationUrl() -> URL? {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_./-,"
        let codeChallengeString = String((0..<128).map{ _ in letters.randomElement()! })
        let codeChallengeData = Data(codeChallengeString.utf8)
        let codeChallengeHash = SHA256.hash(data: codeChallengeData)
        let hashString = codeChallengeHash.compactMap { String(format: "%02x", $0) }.joined()
        let codeChallenge = hashString
        
        var components = URLComponents()
        components.scheme = "https"
        components.host = "accounts.spotify.com"
        components.path = "/authorize"
        components.queryItems = [
            URLQueryItem(name: "client_id", value: clientId),
            URLQueryItem(name: "response_type", value: responseStype),
            URLQueryItem(name: "redirect_uri", value: redirectUri),
            URLQueryItem(name: "code_challenge_method", value: codeChallengeMethod),
            URLQueryItem(name: "code_challenge", value: String(codeChallenge))
        ]

        return components.url
    }
    
}
