//
//  VoucherRedeemResp.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


public struct VoucherRedeemResp: Codable{
    
    public var voucherId: String?
    public var voucherCode: String?
    public var expiredDate: String?
    
}
