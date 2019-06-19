//
//  RewardObjResp.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

public struct RewardObjResp: Codable{
    
    public var rewardId: String?
    public var rewardName: String?
    public var description: String?
    public var termAndCondition: String?
    public var requiredPoint: Int?
    public var expiredDate: String?
    public var productName: String?
    public var productImage: String?
    public var productType: String?
    public var amountValue: Int32?
    public var percentageValue: Int?
    public var stock: Int?
    
}
