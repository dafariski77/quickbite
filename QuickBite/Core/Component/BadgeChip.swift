import SwiftUI

struct BadgeChip: View {
    let text: String
    var icon: String? = nil
    var color: Color = .accentColor
    var style: ChipStyle = .tinted
    var isSelected: Bool = false

    enum ChipStyle {
        case tinted   // Soft colored background + colored text (great for status badges)
        case filled   // Solid background + white text
        case outlined // Subtle border + tinted/primary text (great for filter chips)
    }

    var body: some View {
        HStack(spacing: 4) {
            if let icon {
                Image(systemName: icon)
                    .font(.caption2.weight(.bold))
            }

            Text(text)
                .font(.caption.weight(.semibold))
                .lineLimit(1)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .foregroundStyle(foregroundColor)
        .background(backgroundColor, in: Capsule())
        .overlay(
            Capsule()
                .stroke(borderColor, lineWidth: style == .outlined ? 1 : 0)
        )
    }

    private var foregroundColor: Color {
        switch style {
        case .tinted:
            return color
        case .filled:
            return .white
        case .outlined:
            return isSelected ? .white : .primary
        }
    }

    private var backgroundColor: Color {
        switch style {
        case .tinted:
            return color.opacity(0.14)
        case .filled:
            return color
        case .outlined:
            return isSelected ? color : Color(.secondarySystemFill)
        }
    }

    private var borderColor: Color {
        isSelected ? color : Color.primary.opacity(0.12)
    }
}
