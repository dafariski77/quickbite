//
//  HomeView.swift
//  QuickBite
//
//  Created by Dafa Riski on 15/11/26.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedCategory: MenuCategory = .all
    @State private var isSheetOpen: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                LazyVStack(alignment: .leading, pinnedViews: .sectionHeaders) {
                    HomeReorderCard()
                    
                    Section {
                        Text("Daily Kitchen Specials").font(.headline)
                        
                        ForEach(0..<5, id: \.self) { _ in
                            HomeMenuItem(onAddPress: {
                                isSheetOpen = true
                            })
                        }
                    } header: {
                        CategoryTabBar(selection: $selectedCategory)
                            .padding(.vertical, 8)
                    }
                }
                .padding()
                .padding(.bottom, 90)
            }
            .background(.appBackground)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            HomeBottomCTA()
        }
        .sheet(isPresented: $isSheetOpen) {
            SheetAddMenu()
                .presentationDragIndicator(.visible)
                .presentationDetents([.medium, .large])
                .presentationBackground(.white)
                .presentationContentInteraction(.resizes)
        }
    }
}

#Preview {
    HomeView()
}
