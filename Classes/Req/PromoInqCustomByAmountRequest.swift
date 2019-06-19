//
//  PromoInqCustomByAmountRequest.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

struct PromoInqCustomByAmountRequest: Codable {
    
    var memberId: String
    var merchantId: String
    var storeId: String
    var custom: [CustomRulesReq]?
    
}
