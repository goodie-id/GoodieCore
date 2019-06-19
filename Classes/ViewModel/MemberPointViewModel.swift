//
//  MemberPointViewModel.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


class MemberPointViewModel {
    
    let api = Global.instance.api
    var memberRes: MemberPointResponse?
    
    func doMemberPoint(authToken: String, deviceUniqueId: String, memberId: String, merchantId: String, completion: @escaping(MemberPointResponse) -> Void, onError: @escaping(Error) -> Void){
        let headers = ["Content-Type": "application/x-www-form-urlencoded", "authToken": authToken, "deviceUniqueId": deviceUniqueId]
        let params = ["memberId": memberId, "merchantId": merchantId]
        ClientConnect(baseURL: api.uri(.memberPoint)).get(MemberPointResponse.self, params: params, headers: headers) { (result, resp, err) in
            
            if err != nil {
                onError(err!)
                return
            }
            
            self.memberRes = result!
            if self.memberRes?.abstractResponse?.responseStatus == "INQ000"{
                completion(result!)
            }else{
                completion(result!)
                return
            }
            
        }
        
    }
    
    
}


