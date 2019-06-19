//
//  ChangePasswordRequest.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

struct ChangePasswordRequest: Codable {
    
    var confirmPassword: String
    var memberId: String
    var merchantId: String
    var password: String
    var passwordOld: String
    var username: String
    
}

