//
//  ListHistoryViewModel.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation



class ListHistoryViewModel {
    
    let api = Global.instance.api
    var listPointTransRes: ListPointTransactionResponse?
    
    func doListHistory(authToken: String, deviceUniqueId: String, memberId: String, merchantId: String, trxType: String, orderBy: String, orderType: String, nRecord: String, page: String, completion: @escaping(ListPointTransactionResponse) -> Void, onError: @escaping(Error) -> Void){
        
        let headers = ["Content-Type": "application/x-www-form-urlencoded", "authToken": authToken, "deviceUniqueId": deviceUniqueId]
        let params = ["memberId": memberId, "merchantId": merchantId, "trxType": trxType, "orderBy": orderBy, "orderType": orderType, "nRecord": nRecord, "page": page]
        ClientConnect(baseURL: api.uri(.listHistory)).get(ListPointTransactionResponse.self, params: params, headers: headers) { (result, resp, err) in
            
            if err != nil {
                onError(err!)
                return
            }
            
            self.listPointTransRes = result!
            if self.listPointTransRes?.abstractResponse?.responseStatus == "INQ000"{
                completion(result!)
            }else{
                completion(result!)
                return
            }
            
        }
        
    }
    
    
}


