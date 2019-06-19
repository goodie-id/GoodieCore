//
//  RewardListResponse.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


public struct RewardListResponse: Decodable{
    
    public var recordInfo: RecordInfoResp?
    public var rewards: [RewardObjResp]?
    public var abstractResponse: AbstractResponse?
    
}
