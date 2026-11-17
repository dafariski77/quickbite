//
//  ButtonStyle.swift
//  QuickBite
//
//  Created by Dafa Riski on 17/11/26.
//

import SwiftUI

struct AppButtonStyle: ButtonStyle {
    enum Variant {
        case primary
        case secondary
        case danger
        
        var foregroundColor: Color {
            switch self {
            case .primary:   return .white
            case .secondary: return .appPrimary
            case .danger:    return .appRedDark
            }
        }
        
        var backgroundColor: Color {
            switch self {
            case .primary:   return .appPrimary
            case .secondary: return .appPrimary.opacity(0.1)
            case .danger:    return .appRedLight
            }
        }
    }
    
    @Environment(\.isEnabled) private var isEnabled
    let variant: Variant
    let fullWidth: Bool
    
    init(variant: Variant, fullWidth: Bool = true) {
        self.variant = variant
        self.fullWidth = fullWidth
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline.weight(.semibold))
            .frame(maxWidth: fullWidth ? .infinity : nil)
            .padding(.vertical, 14)
            .padding(.horizontal, fullWidth ? 0 : 20)
            .foregroundStyle(variant.foregroundColor)
            .background(variant.backgroundColor)
            .clipShape(.rect(cornerRadius: 10))
            .opacity(!isEnabled ? 0.5 : (configuration.isPressed ? 0.85 : 1.0))
            .scaleEffect(configuration.isPressed && isEnabled ? 0.99 : 1.0)
            .animation(.easeOut(duration: 0.15), value: configuration.isPressed)
    }
}

// MARK: - Dot-Syntax Extensions

extension ButtonStyle where Self == AppButtonStyle {
    static var primary: AppButtonStyle { AppButtonStyle(variant: .primary) }
    static var secondary: AppButtonStyle { AppButtonStyle(variant: .secondary) }
    static var danger: AppButtonStyle { AppButtonStyle(variant: .danger) }
    
    static func primary(fullWidth: Bool) -> AppButtonStyle {
        AppButtonStyle(variant: .primary, fullWidth: fullWidth)
    }
    
    static func secondary(fullWidth: Bool) -> AppButtonStyle {
        AppButtonStyle(variant: .secondary, fullWidth: fullWidth)
    }
    
    static func danger(fullWidth: Bool) -> AppButtonStyle {
        AppButtonStyle(variant: .danger, fullWidth: fullWidth)
    }
}
