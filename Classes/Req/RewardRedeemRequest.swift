//
//  RewardRedeemRequest.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

struct RewardRedeemRequest: Codable {
    
    var memberId: String
    var merchantId: String
    var rewards: [RewardReq]
    
}
