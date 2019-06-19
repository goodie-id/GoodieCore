//
//  IssuingResp.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

public struct IssuingResp: Codable{
    
    
    public var date: String?
    public var promotionName: String?
    public var ruleType: String?
    public var ruleName: String?
    public var description: String?
    public var reff: String?
    public var amount: Int32?
    public var point: Int
    
}
