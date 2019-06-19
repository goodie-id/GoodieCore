//
//  RewardRedemptionResp.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


public struct RewardRedemptionResp: Codable{
    
    public var detailResponses: [DetailRewardRedeemResp]?
    public var totalPointUsed: Int?
    public var currentBalance: Int32?
    public var transactionIdReference: String?
    
    
}
