//
//  CustomRulesReq.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


struct CustomRulesReq: Codable {
    
    var ruleName: String
    var issuing: Int
    var amount: Int
    var refNumber: String
    
}
