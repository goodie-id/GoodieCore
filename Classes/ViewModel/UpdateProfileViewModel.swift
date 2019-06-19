//
//  UpdateProfileViewModel.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation




class UpdateProfileViewModel {
    
    let api = Global.instance.api
    var updateProfileRes: UpdateMemberProfileResponse?
    
    func doUpdateMemberProfile(authToken: String, deviceUniqueId: String, request: UpdateMemberProfileRequest, completion: @escaping(UpdateMemberProfileResponse) -> Void, onError: @escaping(Error) -> Void){
        let headers = ["Content-Type": "application/json", "authToken": authToken, "deviceUniqueId": deviceUniqueId]
        ClientConnect(baseURL: api.uri(.updateMemberProfile)).post(UpdateMemberProfileResponse.self, params: nil, body: request, headers: headers){
            (result, resp, err) in
            
            if err != nil {
                onError(err!)
                return
            }
            
            self.updateProfileRes = result!
            if self.updateProfileRes?.abstractResponse?.responseStatus == "AUTH000"{
                completion(result!)
            }else{
                completion(result!)
                return
            }
            
        }
        
    }
    
    
}
