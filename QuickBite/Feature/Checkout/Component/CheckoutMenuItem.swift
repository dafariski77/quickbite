//
//  CheckoutMenuItem.swift
//  QuickBite
//
//  Created by Dafa Riski on 16/11/26.
//

import SwiftUI

struct CheckoutMenuItem: View {
    private let dummyImage: String = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3PvAPlM3nPBwwSjhoxoNo4RTPUaj2PL0mKHDTPsLlR_axPapnK6Vhn5k&s=10"
    
    private let dummyCategories: [String] = [
        "Meat",
        "Vetegables",
        "Jamur"
    ]
    
    var body: some View {
        HStack(alignment: .top) {
            RemoteImage (url: dummyImage, width: 86, height: 90)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Sate Ayam")
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                Text(dummyCategories.joined(separator: " • "))
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    .lineLimit(1)
                    .truncationMode(.tail)
                
                BadgeChip(text: "1x", color: .gray)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("$12.00")
                .font(.headline.bold())
        }
    }
}

#Preview {
    CheckoutMenuItem()
}
