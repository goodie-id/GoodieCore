//
//  AbstractResponse.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

public struct AbstractResponse: Codable {
    public var responseStatus: String
    public var responseMessage: String
}
