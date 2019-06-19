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

    
    
}
