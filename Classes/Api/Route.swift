//
//  Route.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

enum Route: String {
    case login = "authentication/create"
    case register = "member/profile/registration"
    case memberPoint = "member/points"
    case memberProfile = "member/profile"
    case promoInquiryBasic = "promotion/inquiry"
    case voucherBalance = "point-transaction/redemption/voucher"
    case rewardList = "point-transaction/redemption/reward"
    case changePassword = "member/change/password"
    case voucherUsage = "point-transaction/redemption/voucher/redeem"
    case rewardReedem = "point-transaction/redemption/reward/redeem"
    case updateMemberProfile = "member/update/profile"
    case listHistory = "point-transaction/history"
    case promoPostingBasic = "promotion/posting"
    case verificationMember = "member/registration/verification"
}
