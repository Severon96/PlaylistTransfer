//
//  Web.swift
//  PlaylistTransfer
//
//  Created by Dominik Mack on 04.11.20.
//

import SwiftUI
import UIKit
import WebKit

struct Webview: UIViewRepresentable {
    let url: URL

    func makeUIView(context: UIViewRepresentableContext<Webview>) -> WKWebView {
        let webview = WKWebView()

        let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
        webview.load(request)

        return webview
    }

    func updateUIView(_ webview: WKWebView, context: UIViewRepresentableContext<Webview>) {
        print("Updating...")
        let request = URLRequest(url: self.url, cachePolicy: .returnCacheDataElseLoad)
        webview.load(request)
    }
}
