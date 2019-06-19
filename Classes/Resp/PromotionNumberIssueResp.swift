//
//  PromotionNumberIssueResp.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

public struct PromotionNumberIssueResp: Codable{
    
    var promotionCode: String?
    var promotionName: String?
    var basicRuleName: String?
    var basicRulePoint: Int?
    var customRulePoints: [CustomRulePointResp]?
    
}
