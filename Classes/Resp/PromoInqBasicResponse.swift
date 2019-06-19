//
//  PromoInqBasicResponse.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

public struct PromoInqBasicResponse: Decodable{
    
    public var memberId: String?
    public var merchantId: String?
    public var memberName: String?
    public var storeId: String?
    public var transactionDate: String?
    public var transactionId: String?
    public var totalPointIssuing: Int?
    public var promotionNumberIssued: [PromotionNumberIssueResp]?
    public var abstractResponse: AbstractResponse?
    
}
