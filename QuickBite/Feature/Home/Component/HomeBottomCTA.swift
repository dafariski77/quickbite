//
//  HomeBottomCTA.swift
//  QuickBite
//
//  Created by Dafa Riski on 15/11/26.
//

import SwiftUI

struct HomeBottomCTA: View {
    private let cartCount = 1
    
    var body: some View {
        Button {
            print("haw")
        } label: {
            HStack(spacing: 12) {
                Image(systemName: "cart.fill")
                    .foregroundStyle(.white)
                    .padding(10)
                    .background(Color.white.opacity(0.2), in: Circle())
                    .overlay(alignment: .topTrailing) {
                        if cartCount > 0 {
                            Text("\(cartCount)")
                                .font(.caption2.weight(.bold))
                                .foregroundStyle(Color.appPrimary)
                                .padding(.horizontal, 5)
                                .frame(minWidth: 18, minHeight: 18)
                                .background(Color.white, in: Capsule())
                                .offset(x: 4, y: -4)
                        }
                    }

                VStack(alignment: .leading, spacing: 2) {
                    Text("1 item in order")
                        .font(.caption)
                        .foregroundStyle(.white.opacity(0.85))
                    Text("$12.00 total")
                        .font(.subheadline.weight(.bold))
                        .foregroundStyle(.white)
                }

                Spacer()

                HStack(spacing: 4) {
                    Text("Checkout")
                        .font(.subheadline.weight(.bold))
                    Image(systemName: "chevron.right")
                        .font(.caption.weight(.bold))
                }
                .foregroundStyle(.white)
                .padding(.trailing, 4)
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity)
            .background(Color.appPrimary, in: Capsule())
            .shadow(color: Color.appPrimary.opacity(0.35), radius: 10, x: 0, y: 5)
        }
        .buttonStyle(CardButtonStyle())
        .padding(.horizontal)
        .padding(.bottom, 16)
    }
}

#Preview {
    HomeBottomCTA()
}
