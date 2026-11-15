//
//  HomeReorderCard.swift
//  QuickBite
//
//  Created by Dafa Riski on 15/11/26.
//

import SwiftUI

struct HomeReorderCard: View {
    private let dummyImage: String = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3PvAPlM3nPBwwSjhoxoNo4RTPUaj2PL0mKHDTPsLlR_axPapnK6Vhn5k&s=10"
    
    private let dummyCategories = [
        "Bowl Rice",
        "Less Sugar",
        "Extra Meat",
        "Spicy"
    ]
    
    var body: some View {
        CardContainer {
            VStack {
                HStack (alignment: .top, spacing: 14) {
                    VStack (alignment: .leading, spacing: 10) {
                        BadgeChip(text: "Favorite Meal", icon: "heart.fill", color: .brown)
                        Text("Grilled Teriyaki").font(.title2).fontWeight(.bold)
                        Text(dummyCategories.joined(separator: " • "))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                            .lineLimit(1)
                            .truncationMode(.tail)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    RemoteImage(url: dummyImage, width: 100,height: 90)
                }
                
                HStack (alignment: .center) {
                    HStack {
                        Image(systemName: "clock")
                            .foregroundStyle(.blue)
                        Text(
                            "Ready for pickup at 12:00 AM"
                        )
                        .font(.caption)
                    }
                    
                    Spacer()
                    
                    BadgeChip(text: "Building 4", color: .blue)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                .background(Color.gray.opacity(0.1))
                .clipShape(.rect(cornerRadius: 10))
                
                Button {
                    print("")
                } label: {
                    HStack {
                        Image(systemName: "hand.tap.fill")
                        Text("Reorder")
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                }
                .foregroundStyle(Color.white)
                .background(Color.blue)
                .clipShape(.rect(cornerRadius: 10))
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    HomeReorderCard()
}
