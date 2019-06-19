//
//  LoginResponse.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

public struct LoginResponse: Decodable {
    
    public var authToken: String?
    public var authDevice: String?
    public var expiryTime: String?
    public var memberId: String?
    public var merchantId: String?
    public var firstName: String?
    public var lastName: String?
    public var phoneNumber: String?
    public var gender: String?
    public var birthDate: String?
    public var status: Int?
    public var qrImage: String?
    public var abstractResponse: AbstractResponse?
}
