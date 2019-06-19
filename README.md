# GoodieCore

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
- [x] Login
- [x] Verification Member
- [x] Member Point
- [x] Member Profile
- [x] Promotion Inquiry
- [x] Promotion Posting
- [x] Voucher Balance
- [x] Voucher Redeem
- [x] Reward List
- [x] Reward Redeem
- [x] List History
- [x] Update Profile
- [x] Change Password

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
Here is example:

```
GoodieCore.register(username: username, merchantId: merchantId, phoneNumber: phoneNumber, password: password, firstName: firstName, lastName: lastName, deviceUniqId: deviceUniqId, birthDate: birthDate, referralCode: referralCode, completion: { (RegisterResponse) in
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
GoodieCore.register(username: username, merchantId: merchantId, phoneNumber: phoneNumber, password: password, firstName: firstName, lastName: lastName, deviceUniqId: deviceUniqId, birthDate: birthDate, referralCode: referralCode, completion: { (RegisterResponse) in
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
Here is example:

```
GoodieCore.login(deviceUniqueId: deviceId, username: username, password: password, merchantCode: merchantCode, completion: { (LoginResponse) in
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
GoodieCore.memberPoint(authToken: autToken, deviceUniqId: deviceUniqId, memberId: memberId, merchantId: merchantId, completion: { (MemberPointResponse) in
    if LoginResponse.abstractResponse?.responseStatus == "INQ000" {
        //success, do something
    }else{
        //failed
    }
}) { (Error) in
     //error
}
```

## Member Profile

This member point is done by calling Goodie.memberProfile() function. This function will retrieve based on the memberId, merchantId. Here is example:

```
GoodieCore.memberProfile(authToken: authToken, deviceUniqId: deviceUniqId, memberId: memberId, merchantId: merchantId, completion: { (MemberProfileResponse) in
    if LoginResponse.abstractResponse?.responseStatus == "INQ000" {
        //success, do something
    }else{
        //failed
    }
}) { (Error) in
    //error
}
```



## Author

shurahman, goodiedev1@gmail.com

## License

GoodieCore is available under the MIT license. See the LICENSE file for more info.
