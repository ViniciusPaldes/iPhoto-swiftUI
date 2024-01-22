//
//  ContentView.swift
//  iPhoto
//
//  Created by Vinicius Paldês on 22/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PhotoList().tabItem {
                Label("Library", systemImage: "photo.on.rectangle")
            }
            ForYou().tabItem {
                Label("For You", systemImage: "heart.text.square.fill")
            }.padding()
            Albums().tabItem {
                Label("Albums", systemImage: "rectangle.stack.fill")
            }.padding()
            Search().tabItem {
                Label("Search", systemImage: "magnifyingglass")
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
