//
//  DetailRewardRedeemResp.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


public struct DetailRewardRedeemResp: Codable{
    
    
    
    public var detailResponseId: String?
    public var detailResponseMessage: String?
    public var rewardId: String?
    public var rewardCode: String?
    public var rewardName: String?
    public var pointUsed: Int?
    public var productType: String?
    public var productTypeDescription: String?
    public var voucher: [VoucherRedeemResp]?
    
}
