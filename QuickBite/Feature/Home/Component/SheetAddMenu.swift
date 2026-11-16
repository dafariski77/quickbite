//
//  SheetAddMenu.swift
//  QuickBite
//
//  Created by Dafa Riski on 16/11/26.
//

import SwiftUI

struct SheetAddMenu: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var selectedBase: [String] = []
    @State private var canScrollMore: Bool = false
    
    let baseSelection: [String] = [
        "Jasmine Rice",
        "Brown Organic Rice",
        "Rice Noodles"
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
                LazyVStack(spacing: 14) {
                    VStack {
                        MenuCustomizationLabel(
                            label: "Base Selection"
                        )
                        
                        RadioChecklist(
                            options: baseSelection,
                            allowsMultipleSelection: true,
                            selectedOption: $selectedBase
                        )
                    }
                    
                    VStack {
                        MenuCustomizationLabel(
                            label: "Base Selection"
                        )
                        
                        RadioChecklist(
                            options: baseSelection,
                            allowsMultipleSelection: true,
                            selectedOption: $selectedBase
                        )
                    }
                    
                    VStack {
                        MenuCustomizationLabel(
                            label: "Base Selection"
                        )
                        
                        RadioChecklist(
                            options: baseSelection,
                            allowsMultipleSelection: true,
                            selectedOption: $selectedBase
                        )
                    }
                }
                .padding(.horizontal, 22)
            }
            .onScrollGeometryChange(for: Bool.self) { geo in
                let remainingScroll = geo.contentSize.height - (geo.contentOffset.y + geo.containerSize.height)
                return remainingScroll > 20
            } action: { _, hasMoreContent in
                withAnimation(.easeInOut(duration: 0.2)) {
                    canScrollMore = hasMoreContent
                }
            }
            .overlay(alignment: .bottom) {
                if canScrollMore {
                    Image(systemName: "chevron.compact.down")
                        .font(.system(size: 24, weight: .semibold))
                        .foregroundStyle(.secondary)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 16)
                        .background(.ultraThinMaterial, in: Capsule())
                        .shadow(color: .black.opacity(0.1), radius: 4, y: 2)
                        .padding(.bottom, 12)
                        .transition(.opacity.combined(with: .move(edge: .bottom)))
                        .allowsHitTesting(false)
                }
            }
            .padding(.bottom, 20)
            
            Button {
                dismiss()
            } label: {
                HStack {
                    Text("Add to bag")
                }
                .padding(.vertical, 14)
                .frame(maxWidth: .infinity)
                .background(Color.appPrimary, in: Capsule())
                .foregroundStyle(.white)
                .shadow(color: Color.appPrimary.opacity(0.35), radius: 10, x: 0, y: 5)
                
            }
            .buttonStyle(CardButtonStyle())
            .padding(.bottom, 16)
            .padding(.horizontal, 22)
        }
        .padding(.top, 28)
    }
}

struct MenuCustomizationLabel: View {
    var label: String
    var isOptional: Bool? = false
    
    var body: some View {
        HStack {
            Text(label).font(.headline.weight(.semibold))
            
            Spacer()
            
            BadgeChip(
                text: isOptional! ? "Optional" : "Required",
                color: isOptional! ? .gray : .appPrimary
            )
        }
        
    }
    
}

#Preview {
    SheetAddMenu()
}
