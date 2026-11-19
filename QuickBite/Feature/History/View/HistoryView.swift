//
//  HistoryView.swift
//  QuickBite
//
//  Created by Dafa Riski on 19/11/26.
//

import SwiftUI

struct HistoryView: View {
    private let dummyImage: String = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3PvAPlM3nPBwwSjhoxoNo4RTPUaj2PL0mKHDTPsLlR_axPapnK6Vhn5k&s=10"
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 18) {
                Text("Order History")
                    .font(.title.bold())
                
                Text("Your past lunches, all in one place.")
                    .font(.callout.weight(.regular))
                    .foregroundStyle(.appCaption)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Some favourites. A new pickup time")
                        .font(.subheadline.weight(.semibold))
                        .foregroundStyle(.appPrimary)
                    
                    Text("Reorder with your saved choices, then reserve an available 10-minute window.")
                        .font(.caption.weight(.regular))
                        .foregroundStyle(.appCaption)
                        .lineHeight(.loose)
                }
                .padding()
                .background(.appPrimary.opacity(0.1))
                .clipShape(.rect(cornerRadius: 12))
                
                Text("Most Recent")
                    .font(.default.weight(.semibold))
                
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
                        
                        HStack(alignment: .top) {
                            RemoteImage(url: dummyImage, width: 80, height: 68)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Lemongrass Chicken Vermicelli")
                                    .font(.headline.weight(.semibold))
                                
                                Text("+ Iced Americano · 2 items")
                                    .font(.subheadline)
                                    .foregroundStyle(.appCaption)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        
                        Text("Medium Spice · Extra Egg\nLess Ice · Espresso Roast")
                            .font(.subheadline.weight(.regular))
                            .foregroundStyle(.appCaption)
                        
                        VStack(spacing: 18) {
                            HStack {
                                Text("Pickup · 11:40–11:50 AM")
                                    .font(.subheadline)
                                    .foregroundStyle(.appCaption)
                                Spacer()
                                Text("Shelf A")
                                    .font(.subheadline.weight(.medium))
                            }
                            
                            HStack {
                                Text("Order value")
                                    .font(.subheadline)
                                    .foregroundStyle(.appCaption)
                                Spacer()
                                Text("$16.00")
                                    .font(.subheadline.weight(.medium))
                            }
                            
                            HStack {
                                Text("Paid after allowance")
                                Spacer()
                                Text("$16.00")
                            }
                            .font(.headline.weight(.semibold))
                        }
                        
                        VStack(spacing: 12) {
                            Button {
                                
                            } label: {
                                Text("Reorder · Choose time")
                            }
                            .buttonStyle(.primary)
                            
                            Button {
                                
                            } label: {
                                Text("View order details")
                            }
                            .buttonStyle(.secondary)
                        }
                        
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                Text("Earlier Orders")
                    .font(.default.weight(.semibold))
                
                LazyVStack(spacing: 16) {
                    HistoryEarlyItem()
                    HistoryEarlyItem()
                    HistoryEarlyItem()
                }
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .padding(.bottom, 24)
        }
        .background(.appBackground)
    }
}

#Preview {
    HistoryView()
}
