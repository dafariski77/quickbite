//
//  ButtonStyle.swift
//  QuickBite
//
//  Created by Dafa Riski on 17/11/26.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .foregroundStyle(Color.white)
            .background(Color.appPrimary)
            .clipShape(.rect(cornerRadius: 10))
            // Adds standard interactive feedback when pressed
            .opacity(configuration.isPressed ? 0.85 : 1.0)
            .animation(.easeOut(duration: 0.15), value: configuration.isPressed)
            .font(.headline.weight(.semibold))
    }
}

// Optional extension for cleaner dot syntax (.buttonStyle(.primary))
extension ButtonStyle where Self == PrimaryButtonStyle {
    static var primary: PrimaryButtonStyle { PrimaryButtonStyle() }
}

struct SecondaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding(.vertical, 14)
            .foregroundStyle(Color.appPrimary)
            .background(Color.appPrimary.opacity(0.1))
            .clipShape(.rect(cornerRadius: 10))
            // Adds standard interactive feedback when pressed
            .opacity(configuration.isPressed ? 0.85 : 1.0)
            .animation(.easeOut(duration: 0.15), value: configuration.isPressed)
            .font(.headline.weight(.semibold))
    }
}

// Optional extension for cleaner dot syntax (.buttonStyle(.secondary))
extension ButtonStyle where Self == SecondaryButtonStyle {
    static var secondary: SecondaryButtonStyle { SecondaryButtonStyle() }
}
