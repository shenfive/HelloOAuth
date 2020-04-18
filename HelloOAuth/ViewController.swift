//
//  ViewController.swift
//  HelloOAuth
//
//  Created by 申潤五 on 2020/4/18.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit
import FirebaseAuth
import GoogleSignIn

class ViewController: UIViewController {

    @IBOutlet weak var googleSignBtn: GIDSignInButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance().signIn()
        
        
        Auth.auth().addStateDidChangeListener { (auth, user) in
            if user != nil {
                print("己登入")
            }else{
                print("己登出")
            }
        }
    }

    @IBAction func signOut(_ sender: Any) {
        do {
            try Auth.auth().signOut()
        } catch  {
            print("登出失敗")
        }
        
        
        
    }
    
}

