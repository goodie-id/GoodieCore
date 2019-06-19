//
//  RegisterRequest.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


struct RegisterRequest: Codable {
    
    var username: String
    var merchantId: String
    var phoneNumber: String
    var password: String
    var firstName: String
    var lastName: String
    var deviceUniqueId: String
    var birthDate: String
    var referralCode: String
    
}
