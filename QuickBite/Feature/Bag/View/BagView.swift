//
//  BagView.swift
//  QuickBite
//
//  Created by Dafa Riski on 17/11/26.
//

import SwiftUI

struct BagView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 28) {
                VStack(alignment: .leading, spacing: 12) {
                    Text("YOUR BAG")
                        .font(.caption.weight(.bold))
                        .foregroundStyle(.appPrimary)
                    
                    Text("Make it your lunch.")
                        .font(.title.weight(.semibold))
                    Text("Review your choices before reserving a pickup window.")
                        .font(.subheadline)
                        .foregroundStyle(.appCaption)
                }
                
                BagSummary()
                
                VStack(spacing: 16) {
                    Button {
                        
                    } label: {
                        Text("Choose pickup window")
                    }
                    .buttonStyle(.primary)
                    
                    Button {
                        
                    } label: {
                        Text("Continue Browsing")
                    }
                    .buttonStyle(.secondary)
                }
                .padding(.top, 28)
                
            }
            .padding()
        }
        .background(.appBackground)
    }
}

#Preview {
    BagView()
}
