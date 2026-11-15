//
//  HomeView.swift
//  QuickBite
//
//  Created by Dafa Riski on 15/11/26.
//

import SwiftUI

struct HomeView: View {
    private let dummyImage: String = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3PvAPlM3nPBwwSjhoxoNo4RTPUaj2PL0mKHDTPsLlR_axPapnK6Vhn5k&s=10"
    
    private let dummyCategories = [
        "Bowl Rice",
        "Less Sugar",
        "Extra Meat",
        "Spicy"
    ]
    
    @State private var selectedCategory: MenuCategory = .all
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack(alignment: .leading) {
                    HomeReorderCard()
                    
                    CategoryTabBar(selection: $selectedCategory)
                    
                    Text("Showing: \(selectedCategory.rawValue)")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding()
                .padding(.bottom, 90)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)

            HomeBottomCTA()
        }
        
    }
}

#Preview {
    HomeView()
}
