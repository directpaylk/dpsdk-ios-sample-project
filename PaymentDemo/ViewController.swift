//
//  ViewController.swift
//  PaymentDemo
//
//  Created by Deeptha Senanayake on 12/4/20.
//  Copyright © 2020 DirectPay. All rights reserved.
//

import UIKit
import DPSDK

class ViewController: UIViewController {
    var dpsdk:DPSDK!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dpsdk = DPSDK(apiKey: "API_KEY", dpMerchantId: "YOUR_MERCHANT_KEY", uniqueUserId: "USER_ID", userName: "USER_NAME", mobile: "+94731234567", email: "emailifavailable@user.com")
    }

    @IBAction func addNewCard(_ sender: Any) {
        dpsdk.addCard(self, success: { (c: Card) in
            print("card added", c)
        }) { (code: String, message: String) in
            print("card adding failed", code, message)
        }
    }
}

