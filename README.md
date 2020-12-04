# DPSDK iOS Sample Project
DirectPay sample project for ios integration. This sdk helps you to add new payment cards through your mobile application. To make payments and other card management, please use the APIs. [(Read more)](https://doc.directpay.lk/userWiseCard/)

# Download DirectPay iOS SDK
[Click](https://doc.directpay.lk/sdk/DPSDK.framework.zip) to Download SDK

# Specifications
DirectPay Mobile SDK (iOS): 1.0

Deployment Target: 11

Language: Swift 4.2

# Installation (XCode)
Right click on the project and choose "Add Files to 'project name' ".
Browser and select DPSDK.framework and click "Add".

# Usage
## 1.1 Create DPSDK instance
```sh
let directpay: DPSDK = DPSDK(apiKey: "API_KEY",
    dpMerchantId: "YOUR_MERCHANT_KEY",
    uniqueUserId: "USER_ID",
    userName: "USER_NAME",
    mobile: "+94731234567",
    email: "emailifavailable@user.com")
 ```
    
## 1.2 Add Credit/Debit Card
```sh
self.directpay.addCard(self, success: { (card) in
            print("[NEW CARD ADDED] SUCCESS - CARD_DETAILS: ", card)
            // your code here
}, error: {(code:String, message:String) in
            print("[NEW CARD ADDING FAILED] ERROR: CODE - ",code, "MESSAGE - ", message)
})
```
 
