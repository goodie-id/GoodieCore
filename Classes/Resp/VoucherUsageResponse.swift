//
//  VoucherUsageResponse.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

public struct VoucherUsageResponse: Decodable{
    
    public var memberId: String?
    public var merchantId: String?
    public var abstractResponse: AbstractResponse?
    
}
