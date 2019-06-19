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
    

    
    
}
