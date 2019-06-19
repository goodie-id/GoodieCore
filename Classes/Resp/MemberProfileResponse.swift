//
//  MemberProfileResponse.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

public struct MemberProfileResponse: Decodable{
    
    public var memberId: String?
    public var firstName: String?
    public var lastName: String?
    public var userName: String?
    public var memberPicture: String?
    public var address: String?
    public var city: String?
    public var province: String?
    public var country: String?
    public var postalCode: String?
    public var placeOfBirth: String?
    public var birthDate: String?
    public var gender: String?
    public var mobilePhone: String?
    public var email: String?
    public var abstractResponse: AbstractResponse?
    
}
