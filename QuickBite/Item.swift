//
//  Item.swift
//  QuickBite
//
//  Created by Dafa Riski on 15/11/26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
