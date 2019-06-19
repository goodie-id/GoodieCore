//
//  VoucherUsageViewModel.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


class VoucherUsageViewModel {
    
    let api = Global.instance.api
    var voucherUsageRes: VoucherUsageResponse?
    
    func doVoucherUsage(authToken: String, deviceUniqueId: String, request: VoucherUsageRequest, completion: @escaping(VoucherUsageResponse) -> Void, onError: @escaping(Error) -> Void){
        let headers = ["Content-Type": "application/json", "authToken": authToken, "deviceUniqueId": deviceUniqueId]
        ClientConnect(baseURL: api.uri(.voucherUsage)).post(VoucherUsageResponse.self, params: nil, body: request, headers: headers){
            (result, resp, err) in
            
            if err != nil {
                onError(err!)
                return
            }
            
            self.voucherUsageRes = result!
            if self.voucherUsageRes?.abstractResponse?.responseStatus == "AUTH000"{
                completion(result!)
            }else{
                completion(result!)
                return
            }
            
        }
        
    }
    
    
}
