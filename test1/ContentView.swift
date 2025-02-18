//
//  ContentView.swift
//  test1
//
//  Created by Chetan Mittal on 2025/02/19.
//

import SwiftUI
import WebViewSDK

struct ContentView: View {
    @State private var showWebView = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Test WebView SDK")
                .font(.title)
            
            Button("Open WebView") {
                showWebView = true
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .sheet(isPresented: $showWebView) {
            WebViewContainer(url: URL(string: "https://xaults.com")!)
        }
    }
}

#Preview {
    ContentView()
}
