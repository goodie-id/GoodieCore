//
//  VoucherUsageRequest.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

struct VoucherUsageRequest: Codable {
    
    var memberId: String
    var merchantId: String
    var voucherBalanceId: String
    var storeId: String
    
}
