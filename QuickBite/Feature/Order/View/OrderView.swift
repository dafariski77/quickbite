//
//  OrderView.swift
//  QuickBite
//
//  Created by Dafa Riski on 17/11/26.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 28) {
                VStack(alignment: .leading, spacing: 12) {
                    Text("ORDER CONFIRMED")
                        .font(.caption.weight(.bold))
                        .foregroundStyle(.appPrimary)
                    
                    Text("Lunch, sorted.")
                        .font(.title.weight(.semibold))
                    Text("Your slot is reserved. We'll cook just before your pickup, not hours ahead.")
                        .font(.subheadline)
                        .foregroundStyle(.appCaption)
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("11:40-11:50 AM Express")
                        .font(.callout.weight(.semibold))
                        .foregroundStyle(.appGreenDark)
                    
                    Text("Building 4 - Level 2 Cafetaria")
                        .font(.subheadline.weight(.regular))
                        .foregroundStyle(.appCaption)
                    
                    Text("Pickup location appears when your order is ready.")
                        .font(.caption.weight(.regular))
                        .foregroundStyle(.appCaption)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.appGreenLight)
                .clipShape(.rect(cornerRadius: 14))
                
                CardContainer {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Order #QB-8941")
                            .font(.subheadline.weight(.semibold))
                        
                        LazyVGrid(columns: [
                            GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible()),
                            GridItem(.flexible())
                        ]) {
                            VStack(alignment: .leading) {
                                Capsule()
                                    .frame(maxWidth: .infinity, maxHeight: 6)
                                    .foregroundStyle(.appGreenDark)
                                
                                Text("Scheduled")
                                    .font(.caption.weight(.semibold))
                                    .foregroundStyle(.appGreenDark)
                                
                            }
                            
                            VStack(alignment: .leading) {
                                Capsule()
                                    .frame(maxWidth: .infinity, maxHeight: 6)
                                    .foregroundStyle(.appCaption.opacity(0.2))
                                
                                Text("Preparing")
                                    .font(.caption.weight(.semibold))
                                    .foregroundStyle(.appCaption)
                                
                            }
                            
                            VStack(alignment: .leading) {
                                Capsule()
                                    .frame(maxWidth: .infinity, maxHeight: 6)
                                    .foregroundStyle(.appCaption.opacity(0.2))
                                
                                Text("Ready")
                                    .font(.caption.weight(.semibold))
                                    .foregroundStyle(.appCaption)
                                
                            }
                            
                            VStack(alignment: .leading) {
                                Capsule()
                                    .frame(maxWidth: .infinity, maxHeight: 6)
                                    .foregroundStyle(.appCaption.opacity(0.2))
                                
                                Text("Collected")
                                    .font(.caption.weight(.semibold))
                                    .foregroundStyle(.appCaption)
                                
                            }
                        }
                        
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                CardContainer {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Your Lunch - 2 items")
                            .font(.title3.bold())
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("1x Lemongrass Chicken Vermicelli")
                                .font(.headline.weight(.semibold))
                            
                            Text("Medium Spice - Extra Egg")
                                .font(.subheadline.weight(.regular))
                                .foregroundStyle(.appCaption)
                        }
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("1x Lemongrass Chicken Vermicelli")
                                .font(.headline.weight(.semibold))
                            
                            Text("Medium Spice - Extra Egg")
                                .font(.subheadline.weight(.regular))
                                .foregroundStyle(.appCaption)
                        }
                        
                        HStack {
                            Text("Subtotal")
                            
                            Spacer()
                            
                            Text("$12.00")
                        }
                        .font(.subheadline.weight(.regular))
                        .foregroundStyle(.appCaption)
                        .padding(.top, 10)
                        
                        HStack {
                            Text("Total due")
                            
                            Spacer()
                            
                            Text("$24.00")
                        }
                        .font(.headline.bold())
                        .foregroundStyle(.appCaption)
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Free changes until 11:25 AM")
                        .font(.callout.weight(.semibold))
                        .foregroundStyle(.appPrimary)
                    
                    Text("Cooking starts around 11:34 AM. We'll alert you when your meal is on the shelf.")
                        .font(.caption.weight(.regular))
                        .foregroundStyle(.appCaption)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.appPrimary.opacity(0.1))
                .clipShape(.rect(cornerRadius: 14))
                
                VStack(spacing: 16) {
                    Button {
                        
                    } label: {
                        Text("Change pickup time")
                    }
                    .buttonStyle(.secondary)
                    
                    Button {
                        
                    } label: {
                        Text("Cancel order")
                    }
                    .buttonStyle(.danger)
                }
                
            }
            .padding()
            .padding(.bottom, 32)
        }
        .background(.appBackground)
    }
}

#Preview {
    OrderView()
}
