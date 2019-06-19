//
//  MemberPointResponse.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

public struct MemberPointResponse: Decodable{
    
    public var tierName: String?
    public var tierImage: String?
    public var nextTierName: String?
    public var nextTierImage: String?
    public var reqPointNextTier: Int?
    public var totalPoints: Int?
    public var memberName: String?
    public var memberId: String?
    public var merchantId: String?
    public var nearestPointToBeExpire: Int?
    public var nearestExpiredDate: String?
    public var abstractResponse: AbstractResponse?
    
}
