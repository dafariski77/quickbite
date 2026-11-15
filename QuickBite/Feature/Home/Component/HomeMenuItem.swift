//
//  HomeMenuItem.swift
//  QuickBite
//
//  Created by Dafa Riski on 15/11/26.
//

import SwiftUI

struct HomeMenuItem: View {
    private let dummyImage: String = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3PvAPlM3nPBwwSjhoxoNo4RTPUaj2PL0mKHDTPsLlR_axPapnK6Vhn5k&s=10"
 
    var onAddPress: () -> Void
    
    var body: some View {
        CardContainer {
            HStack(alignment: .top, spacing: 10) {
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        BadgeChip(text: "High Protein", color: .green)
                        BadgeChip(text: "5 min", icon: "clock", color: .black)
                    }
                    
                    Text("Grilled Teriyaki").font(.headline).fontWeight(.semibold).lineLimit(1)
                    Text("Grilled Teriyaki").font(.subheadline).lineLimit(1)
                    
                    Text("$12.00").font(.title3).fontWeight(.bold)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                RemoteImage(url: dummyImage, width: 110)
                    .overlay(alignment: .bottom) {
                        Button {
                            onAddPress()
                        } label: {
                            Text("Add")
                                .font(.subheadline.weight(.bold))
                                .foregroundStyle(.appPrimary)
                                .padding(.horizontal, 38)
                                .padding(.vertical, 8)
                                .background(Color.white, in: Capsule())
                                .overlay(
                                    Capsule()
                                        .stroke(.appPrimary, lineWidth: 1)
                                )
                                .shadow(color: .black.opacity(0.15), radius: 4, y: 2)
                        }
                        .buttonStyle(.plain)
                        .offset(y: 22)
                    }
                    .padding(.bottom, 22)
            }
            
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    HomeMenuItem {
      print("hello world")
    }
}
