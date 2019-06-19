//
//  LoginViewModel.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


class LoginViewModel {
    
    let api = Global.instance.api
    var loginRes: LoginResponse?
    
    func doLogin(request: LoginRequest, completion: @escaping(LoginResponse) -> Void, onError: @escaping(Error) -> Void){
        let headers = ["Content-Type": "application/json"]
        ClientConnect(baseURL: api.uri(.login)).post(LoginResponse.self, params: nil, body: request, headers: headers){
            (result, resp, err) in
            
            if err != nil {
                onError(err!)
                return
            }
            
            self.loginRes = result!
            if self.loginRes?.abstractResponse?.responseStatus == "AUTH000"{
                completion(result!)
            }else{
                completion(result!)
                return
            }
            
        }
        
    }
    
    
}
