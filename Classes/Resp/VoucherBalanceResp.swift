//
//  VoucherBalanceResp.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

public struct VoucherBalanceResp: Codable{
    
    public var voucherBalanceId: String?
    public var productName: String?
    public var productImage: String?
    public var voucherId: String?
    public var voucherCode: String?
    public var amountValue: Int32?
    public var percentageValue: Int?
    public var expiredDate: String?
    public var redeemDate: String?
    public var redeemStore: String?
    public var status: String?
    
}
