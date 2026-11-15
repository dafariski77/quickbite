//
//  Order.swift
//  QuickBite
//
//  Created by Dafa Riski on 15/11/26.
//

import Foundation

struct OrderModel {
    var id: UUID
    var pickupCode: String
    var userId: UUID
    var user: EmployeeModel
}
