//
//  VerificationRequest.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

struct VerificationRequest: Codable {
    
    var username: String
    var merchantId: String
    var code: String
    
    
}
