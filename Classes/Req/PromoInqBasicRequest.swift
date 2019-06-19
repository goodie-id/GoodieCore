//
//  PromoInqBasicRequest.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


struct PromoInqBasicRequest: Codable {
    
    var memberId: String
    var merchantId: String
    var storeId: String
    var basic: BasicRulesReq?
    
}
