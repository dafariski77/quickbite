//
//  PickupTimeCard.swift
//  QuickBite
//
//  Created by Dafa Riski on 17/11/26.
//

import SwiftUI

struct PickupTimeCard: View {
    var isSelected: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("11:00 - 11:30 AM").font(.headline.weight(.bold))
            
            VStack(alignment: .leading, spacing: 10) {
                Text("12 spots open").font(.subheadline).foregroundStyle(.gray)
                
                HStack(alignment: .center, spacing: 4) {
                    Image(systemName: "checkmark")
                        .font(.subheadline)
                    Text("Express")
                        .font(.subheadline)
                }
                .foregroundStyle(.green)
                
                Text("Recommended")
                    .font(.caption.weight(.semibold))
                    .foregroundStyle(.appPrimary)
            }
        }
        .padding()
        .background(isSelected ? .appPrimary.opacity(0.1) : .white)
        .clipShape(.rect(cornerRadius: 12))
        .overlay(
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .stroke(Color.appPrimary, lineWidth: isSelected ? 1.2 : 0)
            
        )
    }
}

#Preview {
    PickupTimeCard()
}
