//
//  RewardReedemViewModel.swift
//  GoodieCore
//
//  Created by GoodieMac2 on 19/06/19.
//

import Foundation




class RewardReedemViewModel {
    
    let api = Global.instance.api
    var rewardReedemRes: RewardRedemptionResponse?
    
    func doRewardReedem(authToken: String, deviceUniqueId: String, request: RewardRedeemRequest, completion: @escaping(RewardRedemptionResponse) -> Void, onError: @escaping(Error) -> Void){
        
        let headers = ["Content-Type": "application/json", "authToken": authToken, "deviceUniqueId": deviceUniqueId]
        
        ClientConnect(baseURL: api.uri(.rewardReedem)).post(RewardRedemptionResponse.self, params: nil, body: request, headers: headers){
            (result, resp, err) in
            
            if err != nil {
                onError(err!)
                return
            }
            
            self.rewardReedemRes = result!
            if self.rewardReedemRes?.abstractResponse?.responseStatus == "RWRED000"{
                completion(result!)
            }else{
                completion(result!)
                return
            }
            
        }
        
    }
    
    
}
