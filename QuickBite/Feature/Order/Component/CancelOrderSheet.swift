//
//  CancelOrderSheet.swift
//  QuickBite
//
//  Created by Dafa Riski on 19/11/26.
//

import SwiftUI

struct CancelOrderSheet: View {
    @Environment(\.dismiss) var dismiss
    @State private var sheetHeight: CGFloat = .zero
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Text("Cancel this order")
                    .font(.title3.weight(.bold))
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                }
                .buttonStyle(.plain)
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Cooking has already started")
                    .font(.headline.weight(.semibold))
                    .foregroundStyle(.appYellowDark)
                
                VStack(alignment: .leading) {
                    Text("Your free-change cutoff was 11:25 AM.\nCancelling now will notify the kitchen and be recorded as a late cancellation.")
                }
                .font(.subheadline.weight(.regular))
                .foregroundStyle(.appCaption)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.appYellowLight)
            .clipShape(.rect(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Order #QB-8941 - Pickup 11:40 AM")
                    .font(.headline.weight(.semibold))
                
                VStack(alignment: .leading) {
                    Text("Chicken Vermicelli + Iced Americano \n2 items · $0.00 due")
                }
                .font(.subheadline.weight(.regular))
                .foregroundStyle(.appCaption)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.gray.opacity(0.1))
            .clipShape(.rect(cornerRadius: 12))
            
            Text("You won’t be able to restore this order after cancelling.")
                .font(.subheadline.weight(.regular))
                .foregroundStyle(.appCaption)
                .padding(.vertical, 12)
            
            VStack {
                Button {
                    
                } label: {
                    Text("Keep my order")
                }
                .buttonStyle(.primary)
                
                
                Button {
                    
                } label: {
                    Text("Yes, cancel order")
                }
                .buttonStyle(.dangerSolid)
            }
            
        }
        .padding()
        .padding(.top, 20)
        .presentationBackground(.white)
        .presentationDragIndicator(.visible)
        .fixedSize(horizontal: false, vertical: true)
        .onGeometryChange(for: CGFloat.self) { proxy in
            proxy.size.height
        } action: { newHeight in
            sheetHeight = newHeight
        }
        .presentationDetents([.height(sheetHeight)])
    }
}

#Preview {
    CancelOrderSheet()
}
