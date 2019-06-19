//
//  RegisterResponse.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


public struct RegisterResponse: Decodable{
    
    public var memberId: String?
    public var referralPoint: Int?
    public var abstractResponse: AbstractResponse?
    
}
