//
//  LoginViewController.swift
//  iBabyMain
//
//  Created by SSO on 02/12/2018.
//  Copyright © 2018 sso. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func loginTapped(_sender: Any){
        
        //TODO: Here,perform login with tap controller
        let mainTabController = storyboard?.instantiateViewController(withIdentifier: "MainTabController") as! MainTabController
        mainTabController.selectedViewController = mainTabController.viewControllers?[1]
        present(mainTabController, animated: true, completion: nil)
        
        
    }
    

}

