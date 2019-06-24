//
//  GoodieCore.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

public class GoodieCore: NSObject {
    
    public override init(){
        super.init()
    }
    
    public class func login(deviceUniqueId: String, username: String, password: String, merchantCode: String, completion: @escaping(LoginResponse) -> Void, onError: @escaping(Error)-> Void){
        let log = LoginRequest(deviceUniqueId: deviceUniqueId, username: username, password: password, merchantCode: merchantCode)
        let vm = Global.locator.auth
        vm.doLogin(request: log, completion: { (res:LoginResponse) in
            completion(res)
        }) { (error:Error) in
            onError(error)
        }
    }
    
    public class func memberPoint(authToken: String, deviceUniqId: String, memberId: String, merchantId: String, completion: @escaping(MemberPointResponse) -> Void, onError: @escaping(Error) -> Void){
        let vm = Global.locator.memberPoint
        vm.doMemberPoint(authToken: authToken, deviceUniqueId: deviceUniqId, memberId: memberId, merchantId: merchantId, completion: { (res:MemberPointResponse) in
            completion(res)
        }) { (err:Error) in
            onError(err)
        }
    }
    
    public class func memberProfile(authToken: String, deviceUniqId: String, memberId: String, merchantId: String, completion: @escaping(MemberProfileResponse) -> Void, onError: @escaping(Error) -> Void){
        let vm = Global.locator.memberProfile
        vm.doMemberProfile(authToken: authToken, deviceUniqueId: deviceUniqId, memberId: memberId, merchantId: merchantId, completion: { (res:MemberProfileResponse) in
            completion(res)
        }, onError: { (error:Error) in
            onError(error)
        })
    }
    
    public class func register(username: String, merchantId: String, phoneNumber: String, password: String, firstName: String, lastName: String, deviceUniqId: String, birthDate: String, referralCode:String, completion: @escaping(RegisterResponse) -> Void, onError: @escaping(Error) -> Void){
        let registerReq = RegisterRequest(username: username, merchantId: merchantId, phoneNumber: phoneNumber, password: password, firstName: firstName, lastName: lastName, deviceUniqueId: deviceUniqId, birthDate: birthDate, referralCode: referralCode)
        let vm = Global.locator.register
        vm.doRegister(request: registerReq, completion: { (res:RegisterResponse) in
            completion(res)
        }){ (error:Error) in
            onError(error)
        }
    }

    
    public class func promotionInquiryBasic(authToken: String, deviceUniqId: String, memberId: String,
                                            merchantId: String, storeId: String, productCode: String,
                                            refNumber: String, totalTrxAmount: Double, completion: @escaping(PromoInqBasicResponse) -> Void,
                                            onError: @escaping(Error) -> Void){
        
        let basicRulesReq = BasicRulesReq(productCode: productCode, refNumber: refNumber, totalTrxAmount: totalTrxAmount)
        let promoInqBasicReq = PromoInqBasicRequest(memberId: memberId, merchantId: merchantId, storeId: storeId, basic: basicRulesReq)
        let vm = Global.locator.promoInqBasic
        vm.doPromoInquiryBasic(authToken: authToken, deviceUniqueId: deviceUniqId, request: promoInqBasicReq, completion: { (res:PromoInqBasicResponse) in
            completion(res)
        }) { (error:Error) in
            onError(error)
        }
    }
    
    
    
    
    public class func promotionPostingBasic(authToken: String, deviceUniqId: String, memberId: String,
                                            merchantId: String, storeId: String, productCode: String,
                                            refNumber: String, totalTrxAmount: Double, completion: @escaping(PromoInqBasicResponse) -> Void,
                                            onError: @escaping(Error) -> Void){
        
        let basicRulesReq = BasicRulesReq(productCode: productCode, refNumber: refNumber, totalTrxAmount: totalTrxAmount)
        let promoInqBasicReq = PromoInqBasicRequest(memberId: memberId, merchantId: merchantId, storeId: storeId, basic: basicRulesReq)
        let vm = Global.locator.promoPostingBasic
        vm.doPromoPostingBasic(authToken: authToken, deviceUniqueId: deviceUniqId, request: promoInqBasicReq, completion: { (res:PromoInqBasicResponse) in
            completion(res)
        }) { (error:Error) in
            onError(error)
        }
    }
    
    
    public class func voucherBalance(authToken: String, deviceUniqueId: String, voucherBalanceId: String, memberId: String, merchantId: String, orderBy: String, orderType: String, nRecords: String, page: String, completion: @escaping(VoucherBalanceResponse) -> Void, onError: @escaping(Error) -> Void){
        let vm = Global.locator.voucherBalance
        vm.doVoucherBalance(authToken: authToken, deviceUniqueId: deviceUniqueId, voucherBalanceId: voucherBalanceId, memberId: memberId, merchantId: merchantId, orderBy: orderBy, orderType: orderType, nRecords: nRecords, page: page, completion: { (res:VoucherBalanceResponse) in
            completion(res)
        }) { (error:Error) in
            onError(error)
        }
    }
    
    
    public class func rewardList(authToken: String, deviceUniqueId: String, keyword: String, rewardId: String, memberId: String, merchantId: String, orderBy: String, orderType: String, nRecords: String, page: String, completion: @escaping(RewardListResponse) -> Void, onError: @escaping(Error) -> Void){
        let vm = Global.locator.rewardList
        vm.doRewardList(authToken: authToken, deviceUniqueId: deviceUniqueId, keyword: keyword, rewardId: rewardId, memberId: memberId, merchantId: merchantId, orderBy: orderBy, orderType: orderType, nRecords: nRecords, page: page, completion:
            { (res:RewardListResponse) in
                completion(res)
        }) { (error:Error) in
            onError(error)
        }
    }
    
    
    
    
    public class func changePassword(authToken: String, deviceUniqueId: String, passwordOld: String, newPassword: String, confirmPassword: String, memberId: String, merchantId: String, username: String,  completion: @escaping(ChangePasswordResponse) -> Void, onError: @escaping(Error) -> Void){
        
        let changePassReq = ChangePasswordRequest(confirmPassword: confirmPassword, memberId: memberId, merchantId: merchantId, password: newPassword, passwordOld: passwordOld, username: username)
        let vm = Global.locator.changePassword
        vm.doChangePassword(authToken: authToken, deviceUniqueId: deviceUniqueId, request: changePassReq, completion: { (res:ChangePasswordResponse) in
            completion(res)
        }) { (error:Error) in
            onError(error)
        }
    }
    
    
    
    public class func voucherUsage(authToken: String, deviceUniqueId: String, memberId: String, merchantId: String, voucherBalanceId: String, storeId: String, completion: @escaping(VoucherUsageResponse) -> Void, onError: @escaping(Error) -> Void){
        
        let voucherUsageReq = VoucherUsageRequest(memberId: memberId, merchantId: merchantId, voucherBalanceId: voucherBalanceId, storeId: storeId)
        
        let vm = Global.locator.voucherUsage
        vm.doVoucherUsage(authToken: authToken, deviceUniqueId: deviceUniqueId, request: voucherUsageReq, completion: { (res:VoucherUsageResponse) in
            completion(res)
        }) { (error:Error) in
            onError(error)
        }
    }
    
    
    
    
    public class func reedemReward(authToken: String, deviceUniqId: String, memberId: String, merchantId: String,  rewardId : String, quantity : Int, completion: @escaping(RewardRedemptionResponse) -> Void, onError: @escaping(Error) -> Void){
        let reward = RewardReq(rewardId: rewardId, quantity: quantity)
        let reedemRewardReq = RewardRedeemRequest(memberId: memberId, merchantId: merchantId, rewards:[reward])
        let vm = Global.locator.redeemReward
        vm.doRewardReedem(authToken: authToken, deviceUniqueId: deviceUniqId, request: reedemRewardReq, completion: { (res:RewardRedemptionResponse) in
            completion(res)
        }) { (error:Error) in
            onError(error)
        }
        
    }
    
    
    
    public class func updateMemberProfile(authToken: String, deviceUniqueId: String, memberId: String, merchantId: String, birthDate: String, firstName: String, lastName: String, gender: String, phoneNumber: String, completion: @escaping(UpdateMemberProfileResponse) -> Void, onError: @escaping(Error) -> Void){
        
        let updateProfileReq = UpdateMemberProfileRequest(firstName: firstName, lastName: lastName, phoneNumber: phoneNumber, gender: gender, merchantId: merchantId, birthDate: birthDate, memberId: memberId)
        
        let vm = Global.locator.updateMemberProfile
        vm.doUpdateMemberProfile(authToken: authToken, deviceUniqueId: deviceUniqueId, request: updateProfileReq, completion: { (res:UpdateMemberProfileResponse) in
            completion(res)
        }) { (error:Error) in
            onError(error)
        }
    }
    
    
    
    public class func listHistory(authToken: String, deviceUniqueId: String, memberId: String, merchantId: String, trxType: String, orderBy: String, orderType: String, nRecord: String, page: String, completion: @escaping(ListPointTransactionResponse) -> Void, onError: @escaping(Error) -> Void){
        
        let vm = Global.locator.listHistory
        vm.doListHistory(authToken: authToken, deviceUniqueId: deviceUniqueId, memberId: memberId, merchantId: merchantId, trxType: trxType, orderBy: orderBy, orderType: orderType, nRecord: nRecord, page: page, completion: { (res:ListPointTransactionResponse) in
            completion(res)
        }) { (error:Error) in
            onError(error)
        }
        
    }
    
    
    
    public class func verification(username: String, merchantId: String, code: String, completion: @escaping(VerificationResponse) -> Void, onError: @escaping(Error) -> Void){
        let verifReq = VerificationRequest(username: username, merchantId: merchantId, code: code)
        let vm = Global.locator.verification
        vm.doVerification(request: verifReq, completion: { (res:VerificationResponse) in
            completion(res)
        }, onError: { (error:Error) in
            onError(error)
        })
    }
    
    
    
    
}
