//
//  BagSummary.swift
//  QuickBite
//
//  Created by Dafa Riski on 17/11/26.
//

import SwiftUI

struct BagSummary: View {
    var body: some View {
        LazyVStack(spacing: 22) {
            BagMenuItem()
            BagMenuItem()
            
            CardContainer {
                VStack(spacing: 16) {
                    HStack {
                        Text("Subtotal - 2 items")
                            .font(.headline.weight(.medium))
                        
                        Spacer()
                        
                        Text("$12.00")
                            .font(.headline.weight(.medium))
                    }
                    
                    HStack {
                        Text("Total due")
                            .font(.title3.weight(.bold))
                        
                        Spacer()
                        
                        Text("$200.00")
                            .font(.title3.weight(.bold))
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

#Preview {
    BagSummary()
}
