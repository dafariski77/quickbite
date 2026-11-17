//
//  CheckoutView.swift
//  QuickBite
//
//  Created by Dafa Riski on 16/11/26.
//

import SwiftUI

struct CheckoutView: View {
    @State private var selectedTime: Int?
    
    private let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("PICKUP LOCATION")
                            .font(.caption.weight(.semibold))
                            .foregroundStyle(.appPrimary)
                        Text("Building 4 - Level 2 Cafetaria")
                            .font(.subheadline.weight(.semibold))
                        Text("Shelf A - Look for your 4-digit code")
                            .font(.caption)
                            .foregroundStyle(.black.opacity(0.7))
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.appPrimary.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 12))
                    
                    
                    LazyVStack {
                        CardContainer {
                            VStack(spacing: 14) {
                                CheckoutMenuItem()
                                
                                Divider()
                                
                                CheckoutMenuItem()
                                
                                HStack {
                                    Text("Total (2 items)")
                                    
                                    Spacer()
                                    
                                    Text("$24.00").font(.title2.bold())
                                    
                                }
                                .padding()
                                .background(.gray.opacity(0.1))
                                .clipShape(.rect(cornerRadius: 12))
                                
                            }
                            
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 12)
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Choose your pickup window").font(.title3.weight(.semibold))
                        
                        VStack(alignment: .leading, spacing: 3) {
                            Text("10 minute windows - Up to 15 orders each.")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                            Text("The earlies low-congestion slot is selected.")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                        }
                        
                        LazyVGrid(columns: columns, spacing: 14) {
                            ForEach(0..<4) { index in
                                PickupTimeCard(isSelected: selectedTime == index)
                                    .onTapGesture {
                                        withAnimation {
                                            if selectedTime == index {
                                                selectedTime = nil
                                            } else {
                                                selectedTime = index
                                            }
                                        }
                                    }
                            }
                        }
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Fresh for your window")
                                .font(.subheadline.weight(.semibold))
                                .foregroundStyle(.appPrimary)
                            Text("Prepared just in time, not hours ahead. Change or cancel freely until 11:25 AM - 15 minutes before your slot.")
                                .font(.caption)
                                .lineHeight(.loose)
                                .foregroundStyle(.gray)
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.appPrimary.opacity(0.1))
                        .clipShape(.rect(cornerRadius: 12))
                    }
                    .padding(.top, 24)
                }
                .padding()
                .padding(.bottom, 140)
            }
            .background(.appBackground)
            
            
            VStack {
                Button {
                    
                } label: {
                    Text("Confirm Order for 11:40 AM")
                        .fontWeight(.semibold)
                }
                .buttonStyle(.primary)
                
                Text("Pickup 11:40-11:50 AM")
                    .font(.subheadline)
                    .foregroundStyle(.black.opacity(0.8))
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(.white)
        }
    }
}

#Preview {
    NavigationStack {
        CheckoutView()
    }
}
