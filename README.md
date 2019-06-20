
## GoodieCore
 Loyalthy system API for iOS

Goodie Enable custom in-app loyalthy in your Mobile App and Web using Goodie Core SDK

[![CI Status](https://img.shields.io/travis/shurahman/GoodieCore.svg?style=flat)](https://travis-ci.org/shurahman/GoodieCore)
[![Version](https://img.shields.io/cocoapods/v/GoodieCore.svg?style=flat)](https://cocoapods.org/pods/GoodieCore)
[![License](https://img.shields.io/cocoapods/l/GoodieCore.svg?style=flat)](https://cocoapods.org/pods/GoodieCore)
[![Platform](https://img.shields.io/cocoapods/p/GoodieCore.svg?style=flat)](https://cocoapods.org/pods/GoodieCore)



## Main Feature

| Feature                                | Description                           |
| ------------------------------- | :------------------------------: |
| Lite Version Goodie SDK     | Goodie SDK without UI       |


## Feature

- [x] Register
- [x] Verification Member
- [x] Login
- [x] Member Point
- [x] Member Profile
- [x] Promotion Inquiry
- [x] Promotion Posting
- [x] Reward List
- [x] Reward Redeem
- [x] Voucher Balance
- [x] Voucher Redeem
- [x] Change Password
- [x] Update Member Profile
- [x] List History (Point Transaction History)



## Installation

CocoaPods is a dependency manager for Cocoa projects. You can install it with the following command:

```
$ gem install cocoapods
```

To integrate GoodieCore into your Xcode project using CocoaPods, specify it in your Podfile:

```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
pod 'GoodieCore',
end
```

Then, run the following command:

```
$ pod install
```

## Register Member

This register is done by calling Goodie.register() function. This function will retrieve or create user.
to do request You have to make a function to get 'deviceUniqueId' for your device (HP).
Here is example:

```
GoodieCore.register(username: "username", merchantId: "merchantId", phoneNumber: "phoneNumber", password: "password", firstName: "firstName", lastName: "lastName",   deviceUniqueId: "deviceUniqueId", birthDate: "18-01-1992", referralCode: "referralCode", completion: { (RegisterResponse) in
    if RegisterResponse.abstractResponse?.responseStatus == "MEM000" {
        //success
    }else{
        //failed
    }
}) { (Error) in
    //error
}
```

## Verification Member

This verification is done by calling Goodie.setVerification() function. This function will retrieve based on the username, merchantId, verificationCode. 
Here is example:

```
GoodieCore.verification(username: "username", merchantId: "merchantId", code: "verificationCode", completion: { (VerificationResponse) in
    if VerificationResponse.abstractResponse?.responseStatus == "MEM000" {
        //success
    }else{
        //failed
    }
}) { (Error) in
    //error
}
```

## Authentication / Login

This login is done by calling GoodieCore.login() function. This function will retrieve based on the deviceUniqueId, username, password, merchantCode. 
You can get a merchant code when after the process login (login respose).
Here is example:

```
GoodieCore.login(deviceUniqueId: "deviceUniqueId", username: "username", password: "password", merchantCode: "merchantCode", completion: { (LoginResponse) in
    if LoginResponse.abstractResponse?.responseStatus == "AUTH000" {
        //success, do something
    }else{
        //failed
    }
}) { (Error) in 
    //error
}
```


## Member Point

This member point is done by calling Goodie.memberPoint() function. This function will retrieve based on the memberId, merchantId. Here is example:

```
GoodieCore.memberPoint(authToken: "autToken", deviceUniqId: "deviceUniqId", memberId: "memberId", merchantId: "merchantId", completion: { (MemberPointResponse) in
    if MemberPointResponse.abstractResponse?.responseStatus == "INQ000" {
        //success, do something
    }else{
        //failed
    }
}) { (Error) in
     //error
}
```

## Member Profile

You can use this function to retrieve data member which is stored in Goodie system.
Here is the example:

```
GoodieCore.memberProfile(authToken: "authToken", deviceUniqId: "deviceUniqId", memberId: "memberId", merchantId: "merchantId", completion: { (MemberProfileResponse) in
    if MemberProfileResponse.abstractResponse?.responseStatus == "INQ000" {
        //success, do something
    }else{
        //failed
    }
}) { (Error) in
    //error
}
```

## Promotion Inquiry basic

This promotion inquiry basic is done by calling Goodie.setPromotionInquiryBasic() function. 
Here is example:

```
GoodieCore.promotionInquiryBasic(authToken: "authToken", deviceUniqId: "deviceUniqId", memberId: "memberId", merchantId: "merchantId", storeId: "storeId", productCode: "productCode", refNumber: "refNumber", totalTrxAmount: 10000, completion: { (PromoInqBasicResponse) in
    if PromoInqBasicResponse.abstractResponse?.responseStatus == "INQ000" {
        //success, do something
    }else{
        //failed
    }
}) { (Error) in

}
```


## Promotion Posting basic

This promotion postingbasic is done by calling Goodie.promotionPostingBasic() function. 
Here is example:

```
GoodieCore.promotionPostingBasic(authToken: "authToken", deviceUniqId: "deviceUniqId", memberId: "memberId", merchantId: "merchantId", storeId: "storeId", productCode: "productCode", refNumber: "refNumber", totalTrxAmount: 100000, completion: { (PromoInqBasicResponse) in
    if PromoInqBasicResponse.abstractResponse?.responseStatus == "INQ000" {
        //success, do something
    }else{
        //failed
    }
}) { (Error) in
    //error
}
```

## Reward List

You can get list reward from goodie by calling Goodie.rewardList() function. And with this function you can use it to show reward detail. If you fill rewardId parameter with “Empty String”, function will retrieve all reward. And if you want to retrieves specific reward, you can fill rewardId parameter with specific id where you get the Id from previous reward list.
Here is example:

```
orderBy : 
1 = ascending
2 = descending

orderType :
1 = reward
2 = product
3 = point
4 = expired date

nRecord = number of records

GoodieCore.rewardList(authToken: "authToken", deviceUniqueId: "deviceUniqueId", keyword: "keyword", rewardId: "rewardId", memberId: "memberId", merchantId: "merchantId", orderBy: "1", orderType: "1", nRecords: "10", page: "0", completion: { (RewardListResponse) in
    if RewardListResponse.abstractResponse?.responseStatus == "INQ000" {
        //success, do something
    }else{
        //failed
    }
    }) { (Error) in
        //error
    }

```


## Reward Redeem

This function Goodie.reedemReward() is used for exchange points into rewards.
Here is the example:


```
let rewardReqs = RewardReq()
rewardReqs.rewardId = "rewardId"
rewardReqs.quantity = 1
var listReward = [rewardReqs]

GoodieCore.reedemReward(authToken: "authToken", deviceUniqId: "deviceUniqId", memberId: "memberId", merchantId: "merchantId", listReward: [RewardReq], completion: { (RewardRedemptionResponse) in
    if RewardListResponse.abstractResponse?.responseStatus == "RWRED000" {
        //success, do something
    }else{
        //failed
    }
}, onError: { (Error) in
    //error
})
```

## List My Reward

This function Goodie.voucherBalance() is used for showing all reward that you have. After you exchange rewards with points, it will show in here. 
Here is the example:

```
orderBy : 
1 = ascending
2 = descending

orderType :
1 = reward
2 = product
3 = point
4 = expired date

nRecord = number of records

GoodieCore.voucherBalance(authToken: "authToken", deviceUniqueId: "deviceUniqueId", voucherBalanceId: "voucherBalanceId", memberId: "memberId", merchantId: "merchantId", orderBy: "1", orderType: "1", nRecords: "10", page: "0", completion: { (VoucherBalanceResponse) in
    if VoucherBalanceResponse.abstractResponse?.responseStatus == "INQ000" {
        //success, do something
    }else{
        //failed
    }
}) { (Error) in
    //error
}
```

## Redeem Voucher

This function Goodie.voucherUsage() is used to redeem your voucher (You can get voucher from redeeming your points)
Here is the example:

```
GoodieCore.voucherUsage(authToken: "authToken", deviceUniqueId: "deviceUniqueId", memberId: "memberId", merchantId: "merchantId", voucherBalanceId: "voucherBalanceId", storeId: "storeId", completion: { (VoucherUsageResponse) in
    if VoucherUsageResponse.abstractResponse?.responseStatus == "INQ001" {
        //success, do something
    }else{
        //failed
    }
}) { (Error) in
    //error
}
```


## Change Password

You can change your existing password with your new password in Goodie system using this function.
Here is the sample code:


```
GoodieCore.changePassword(authToken: "authToken", deviceUniqueId: "deviceUniqueId", passwordOld: "passwordOld", newPassword: "newPassword", confirmPassword: "confirmPassword", memberId: "memberId", merchantId: "merchantId", username: "username", completion: { (ChangePasswordResponse) in
    if ChangePasswordResponse.abstractResponse?.responseStatus == "MEM902" {
        //success, do something
    }else{
        //failed
    }
}) { (Error) in
     //error
}
```


## Update Member profile

Goodie.updateMemberProfile() is used to Update profile in Goodie system, you can change your private information using this function.
Here is the sample code:

```
GoodieCore.updateMemberProfile(authToken: "authToken", deviceUniqueId: "deviceUniqueId", memberId: "memberId", merchantId: "merchantId", birthDate: "birthDate", firstName: "firstName", lastName: "lastName", gender: "gender", phoneNumber: "phoneNumber", completion: { (UpdateMemberProfileResponse) in
    if UpdateMemberProfileResponse.abstractResponse?.responseStatus == "MEM000" {
        //success, do something
    }else{
        //failed
    }
}) { (Error) in
     //error
}
```


## Point transaction History

You can use Goodie.listHistory() function to track your issuing point history and Redeemed point history.
Here is the sample code:


```
orderBy : 
1 = ascending
2 = descending

orderType :
1 = reward
2 = product
3 = point
4 = expired date

trxType : 
0 = It’s mean all data will retrieve (Issuing and Redeemed)
1 = It will retrieve only Issuing data history
2 = It will retrieve only Redeemed data history

nRecord = jumlah record dalam string

GoodieCore.listHistory(authToken: "authToken", deviceUniqueId: "deviceUniqueId", memberId: "memberId", merchantId: "merchantId", trxType: "1", orderBy: "1", orderType: "1", nRecord: "10", page: "0", completion: { (ListPointTransactionResponse) in
    if ListPointTransactionResponse.abstractResponse?.responseStatus == "TRX018" {
        //success, do something
    }else{
        //failed
    }
}) { (Error) in
    //error
}
```


## Author

Mr. Shu, goodiedev1@gmail.com

## License

GoodieCore is available under the MIT license. See the LICENSE file for more info.
