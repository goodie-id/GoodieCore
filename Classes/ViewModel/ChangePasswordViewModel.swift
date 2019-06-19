//
//  ChangePasswordViewModel.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


class ChangePasswordViewModel {
    
    let api = Global.instance.api
    var changePasswordRes: ChangePasswordResponse?
    
    func doChangePassword(authToken: String, deviceUniqueId: String, request: ChangePasswordRequest, completion: @escaping(ChangePasswordResponse) -> Void, onError: @escaping(Error) -> Void){
        let headers = ["Content-Type": "application/json", "authToken": authToken, "deviceUniqueId": deviceUniqueId]
        ClientConnect(baseURL: api.uri(.changePassword)).post(ChangePasswordResponse.self, params: nil, body: request, headers: headers){
            (result, resp, err) in
            
            if err != nil {
                onError(err!)
                return
            }
            
            self.changePasswordRes = result!
            if self.changePasswordRes?.abstractResponse?.responseStatus == "AUTH000"{
                completion(result!)
            }else{
                completion(result!)
                return
            }
            
        }
        
    }
    
    
}
