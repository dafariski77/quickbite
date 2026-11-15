//
//  Employee.swift
//  QuickBite
//
//  Created by Dafa Riski on 15/11/26.
//

import Foundation

struct EmployeeModel: Identifiable, Hashable {
    var id: UUID
    var employee_code: String
    var full_name: String
    var email: String
    var device_token: String?
    var created_at: String
}
