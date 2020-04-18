//
//  ViewController.swift
//  HelloOAuth
//
//  Created by 申潤五 on 2020/4/18.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        Auth.auth().addStateDidChangeListener { (auth, user) in
            if user != nil {
                print("己登入")
            }else{
                print("己登出")
            }
        }
    }


}

