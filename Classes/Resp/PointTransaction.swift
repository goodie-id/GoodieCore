//
//  PointTransaction.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


public struct PointTransaction: Codable{
    
    var trxType: Int?
    var issuing: IssuingResp?
    var redeem: RedeemResp?
    
}
