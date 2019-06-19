//
//  RegisterViewModel.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


class RegisterViewModel {
    
    let api = Global.instance.api
    var registerRes: RegisterResponse?
    
    func doRegister(request: RegisterRequest, completion: @escaping(RegisterResponse) -> Void, onError: @escaping(Error) -> Void){
        let headers = ["Content-Type": "application/json"]
        ClientConnect(baseURL: api.uri(.register)).post(RegisterResponse.self, params: nil, body: request, headers: headers){
            (result, resp, err) in
            
            if err != nil {
                onError(err!)
                return
            }
            
            self.registerRes = result!
            if self.registerRes?.abstractResponse?.responseStatus == "AUTH000"{
                completion(result!)
            }else{
                completion(result!)
                return
            }
            
        }
        
    }
    
    
}
