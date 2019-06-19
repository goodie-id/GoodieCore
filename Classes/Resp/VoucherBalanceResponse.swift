//
//  VoucherBalanceResponse.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

public struct VoucherBalanceResponse: Decodable{
    
    public var recordInfo: RecordInfoResp?
    public var listVoucherBalance: [VoucherBalanceResp]?
    public var abstractResponse: AbstractResponse?
    
}
