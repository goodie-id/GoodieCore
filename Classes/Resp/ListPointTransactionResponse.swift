//
//  ListPointTransactionResponse.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


public struct ListPointTransactionResponse: Decodable{
    
    public var recordInfo: RecordInfoResp?
    public var listPointTransaction: [PointTransaction]?
    public var abstractResponse: AbstractResponse?
    
}
