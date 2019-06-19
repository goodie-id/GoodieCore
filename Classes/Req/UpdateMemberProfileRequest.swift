//
//  UpdateMemberProfileRequest.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


struct UpdateMemberProfileRequest: Codable {
    
    var firstName: String
    var lastName: String
    var phoneNumber: String
    var gender: String
    var merchantId: String
    var birthDate: String
    var memberId: String
    
}
