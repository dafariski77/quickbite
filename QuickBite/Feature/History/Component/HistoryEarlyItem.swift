//
//  HistoryEarlyItem.swift
//  QuickBite
//
//  Created by Dafa Riski on 19/11/26.
//

import SwiftUI

struct HistoryEarlyItem: View {
    var body: some View {
        CardContainer {
            VStack(alignment: .leading, spacing: 16) {
                HStack(alignment: .center) {
                    BadgeChip(text: "Completed", color: .appGreenDark)
                    
                    Spacer()
                    
                    Text("#QB-8941")
                        .font(.subheadline.weight(.regular))
                        .foregroundStyle(.appCaption)
                }
                
                Text("Yesterday - Mon, 16 Nov")
                    .font(.subheadline.weight(.regular))
                    .foregroundStyle(.appCaption)
                
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Lemongrass Chicken Vermicelli")
                        .font(.headline.weight(.semibold))
                    
                    Text("+ Iced Americano · 2 items")
                        .font(.subheadline)
                        .foregroundStyle(.appCaption)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                Text("Not collected within 30 minutes of being ready. This pickup pass is no longer active.")
                    .font(.subheadline.weight(.regular))
                    .foregroundStyle(.appCaption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    HistoryEarlyItem()
}
