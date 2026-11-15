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
        CardContainer {
            HStack {
                HStack (spacing: 16) {
                    Image(systemName: "cart.fill")
                        .foregroundStyle(Color.blue)
                        .padding(12)
                        .background(Color.blue.opacity(0.12), in: Circle())
                        .overlay(alignment: .topTrailing) {
                            if cartCount > 0 {
                                Text("\(cartCount)")
                                    .font(.caption2.weight(.bold))
                                    .foregroundStyle(.white)
                                    .padding(.horizontal, 5)
                                    .frame(minWidth: 18, minHeight: 18)
                                    .background(Color.blue, in: Capsule())
                                    .offset(x: 4, y: -4)
                            }
                        }
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("1 item in order")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                        Text("$12.00 total")
                            .font(.subheadline.weight(.semibold))
                    }
                }


                Spacer()

                Button {
                    print("haw")
                } label: {
                    Image(systemName: "chevron.right")
                        .padding()
                }
                .foregroundStyle(Color.white)
                .background(Color.blue)
                .clipShape(.circle)
            }
        }
        .padding(.horizontal)
        .padding(.bottom, 16)
    }
}

#Preview {
    HomeBottomCTA()
}
