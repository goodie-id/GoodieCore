//
//  LoginRequest.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

struct LoginRequest: Codable {
    
    var deviceUniqueId: String
    var username: String
    var password: String
    var merchantCode: String

    
}
