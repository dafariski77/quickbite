//
//  HomeCategoryTab.swift
//  QuickBite
//
//  Created by Dafa Riski on 15/11/26.
//

import SwiftUI

enum MenuCategory: String, CaseIterable, Identifiable {
    case all = "All"
    case food = "Food"
    case drink = "Drink"
    case snack = "Snack"

    var id: Self { self }
}

struct CategoryTabBar: View {
    @Binding var selection: MenuCategory
    @Namespace private var animation

    var body: some View {
        HStack(spacing: 6) {
            ForEach(MenuCategory.allCases) { category in
                let isSelected = selection == category

                Button {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.75)) {
                        selection = category
                    }
                } label: {
                    Text(category.rawValue)
                        .font(.subheadline.weight(isSelected ? .semibold : .medium))
                        .foregroundStyle(isSelected ? .white : .secondary)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 8)
                        .background {
                            if isSelected {
                                Capsule()
                                    .fill(Color.appPrimary)
                                    .matchedGeometryEffect(id: "ACTIVE_TAB", in: animation)
                            }
                        }
                }
                .buttonStyle(.plain)
            }
        }
        .padding(6)
        .background(Color(.systemGroupedBackground), in: Capsule())
    }
}
