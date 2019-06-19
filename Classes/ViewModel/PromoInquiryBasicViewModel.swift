//
//  PromoInquiryBasicViewModel.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation


class PromoInquiryBasicViewModel {
    
    let api = Global.instance.api
    var promoInqRes: PromoInqBasicResponse?
    
    func doPromoInquiryBasic(authToken: String, deviceUniqueId: String, request: PromoInqBasicRequest, completion: @escaping(PromoInqBasicResponse) -> Void, onError: @escaping(Error) -> Void){
        let headers = ["Content-Type": "application/json", "authToken": authToken, "deviceUniqueId": deviceUniqueId]
        
        ClientConnect(baseURL: api.uri(.promoInquiryBasic)).post(PromoInqBasicResponse.self, params: nil, body: request, headers: headers){
            (result, resp, err) in
            
            if err != nil {
                onError(err!)
                return
            }
            
            self.promoInqRes = result!
            if self.promoInqRes?.abstractResponse?.responseStatus == "INQ000"{
                completion(result!)
            }else{
                completion(result!)
                return
            }
            
        }
        
    }
    
    
}

