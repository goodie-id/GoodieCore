//
//  VoucherBalanceViewModel.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation



class VoucherBalanceViewModel {
    
    let api = Global.instance.api
    var voucherBalanceRes: VoucherBalanceResponse?
    
    func doVoucherBalance(authToken: String, deviceUniqueId: String, voucherBalanceId: String, memberId: String, merchantId: String, orderBy: String, orderType: String, nRecords: String, page: String, completion: @escaping(VoucherBalanceResponse) -> Void, onError: @escaping(Error) -> Void){
        
        let headers = ["Content-Type": "application/x-www-form-urlencoded", "authToken": authToken, "deviceUniqueId": deviceUniqueId]
        let params = ["voucherBalanceId": voucherBalanceId, "memberId": memberId, "merchantId":merchantId,
                      "orderBy": orderBy, "orderType" : orderType, "nRecords" : nRecords, "page": page]
        
        ClientConnect(baseURL: api.uri(.voucherBalance)).get(VoucherBalanceResponse.self, params: params, headers: headers) { (result, resp, err) in
            
            if err != nil {
                onError(err!)
                return
            }
            
            self.voucherBalanceRes = result!
            if self.voucherBalanceRes?.abstractResponse?.responseStatus == "INQ000"{
                completion(result!)
            }else{
                completion(result!)
                return
            }
            
        }
        
    }
    
    
}


