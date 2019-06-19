//
//  RewardListViewModel.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation



class RewardListViewModel {
    
    let api = Global.instance.api
    var rewardListRes: RewardListResponse?
    
    func doRewardList(authToken: String, deviceUniqueId: String, keyword: String, rewardId: String, memberId: String, merchantId: String, orderBy: String, orderType: String, nRecords: String, page: String, completion: @escaping(RewardListResponse) -> Void, onError: @escaping(Error) -> Void){
        
        let headers = ["Content-Type": "application/x-www-form-urlencoded", "authToken": authToken, "deviceUniqueId": deviceUniqueId]
        let params = ["keyword": keyword, "rewardId": rewardId, "memberId": memberId,          "merchantId":merchantId,"orderBy": orderBy, "orderType" : orderType,
                      "nRecords" : nRecords, "page": page]
        
        ClientConnect(baseURL: api.uri(.rewardList)).get(RewardListResponse.self, params: params, headers: headers) { (result, resp, err) in
            
            if err != nil {
                onError(err!)
                return
            }
            
            self.rewardListRes = result!
            if self.rewardListRes?.abstractResponse?.responseStatus == "INQ000"{
                completion(result!)
            }else{
                completion(result!)
                return
            }
            
        }
        
    }
    
    
}
