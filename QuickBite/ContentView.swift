//
//  ContentView.swift
//  QuickBite
//
//  Created by Dafa Riski on 15/11/26.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            Tab("Home", systemImage: "house.fill") {
                HomeView()
            }

            Tab("Active Orders", systemImage: "bag.fill") {
                OrderView()
            }

            Tab("History", systemImage: "newspaper.fill") {
                
            }
        }
        .tint(Color.appPrimary)
    }
}

#Preview {
    ContentView()
}
