//
//  VerificationViewModel.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation



class VerificationViewModel {
    
    let api = Global.instance.api
    var verificationRes: VerificationResponse?
    
    func doVerification(request: VerificationRequest, completion: @escaping(VerificationResponse) -> Void, onError: @escaping(Error) -> Void){
        let headers = ["Content-Type": "application/json"]
        ClientConnect(baseURL: api.uri(.verificationMember)).post(VerificationResponse.self, params: nil, body: request, headers: headers){
            (result, resp, err) in
            
            if err != nil {
                onError(err!)
                return
            }
            
            self.verificationRes = result!
            if self.verificationRes?.abstractResponse?.responseStatus == "AUTH000"{
                completion(result!)
            }else{
                completion(result!)
                return
            }
            
        }
        
    }
    
    
}
