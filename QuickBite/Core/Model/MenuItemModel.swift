//
//  MenuItem.swift
//  QuickBite
//
//  Created by Dafa Riski on 15/11/26.
//

import Foundation

struct MenuItem: Identifiable, Hashable {
    var id: UUID
    var name: String
    var category: String
    var prepDurationMins: Int
    var pickupZone: String
    var isAvailable: Bool
}
