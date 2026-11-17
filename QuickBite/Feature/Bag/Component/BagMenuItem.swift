//
//  BagMenuItem.swift
//  QuickBite
//
//  Created by Dafa Riski on 17/11/26.
//

import SwiftUI

struct BagMenuItem: View {
    private let dummyImage: String = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3PvAPlM3nPBwwSjhoxoNo4RTPUaj2PL0mKHDTPsLlR_axPapnK6Vhn5k&s=10"
    
    var body: some View {
        CardContainer {
            VStack(alignment: .leading, spacing: 14) {
                RemoteImage(url: dummyImage, width: 90, height: 68)
                Text("Lemongrass Chicken Vermiceli")
                    .font(.headline.weight(.semibold))
                
                VStack(alignment: .leading) {
                    Text("Rice Noodles")
                        .font(.subheadline.weight(.regular))
                        .foregroundStyle(.appCaption)
                    Text("Sauce on the side")
                        .font(.subheadline.weight(.regular))
                        .foregroundStyle(.appCaption)
                }
                
                Text("$12.00")
                    .font(.title3.weight(.semibold))
                
                LazyVGrid(columns: [
                    GridItem(.flexible(), spacing: 14),
                    GridItem(.flexible())
                ]) {
                    HStack(spacing: 18) {
                        Button {
                            
                        } label: {
                            Image(systemName: "minus")
                                .frame(maxWidth: .infinity, maxHeight: 48, alignment: .center)
                        }
                        
                        Text("1")
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "plus")
                                .frame(maxWidth: .infinity, maxHeight: 48, alignment: .center)
                        }
                        
                        
                    }
                    .frame(maxWidth: .infinity)
                    
                    .background(.appPrimary.opacity(0.1))
                    .clipShape(Capsule())
                    
                    
                    Button {
                        
                    } label: {
                        Text("Customize")
                    }
                    .buttonStyle(.secondary)
                    .clipShape(Capsule())
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
