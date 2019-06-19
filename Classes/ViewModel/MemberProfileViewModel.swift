//
//  MemberProfileViewModel.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation

class MemberProfileViewModel {
    
    let api = Global.instance.api
    var memberProfileRes: MemberProfileResponse?
    
    func doMemberProfile(authToken: String, deviceUniqueId: String, memberId: String, merchantId: String, completion: @escaping(MemberProfileResponse) -> Void, onError: @escaping(Error) -> Void){
        let headers = ["Content-Type": "application/x-www-form-urlencoded", "authToken": authToken, "deviceUniqueId": deviceUniqueId]
        let params = ["memberId": memberId, "merchantId": merchantId]
        ClientConnect(baseURL: api.uri(.memberProfile)).get(MemberProfileResponse.self, params: params, headers: headers) { (result, resp, err) in
            
            if err != nil {
                onError(err!)
                return
            }
            
            self.memberProfileRes = result!
            if self.memberProfileRes?.abstractResponse?.responseStatus == "INQ000"{
                completion(result!)
            }else{
                completion(result!)
                return
            }
            
        }
        
    }
    
    
}


