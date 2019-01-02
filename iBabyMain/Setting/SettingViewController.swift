//
//  ViewController.swift
//  iBabyMain
//
//  Created by SSO on 31/12/2018.
//  Copyright © 2018 sso. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    
    
    @IBOutlet var BabyNameField: UITextField!
    
    @IBAction func save(_ sender: Any)
    {
        if BabyNameField.text != ""
        {
            performSegue(withIdentifier: "segue", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondController = segue.destination as! MainView
        secondController.LabelText = BabyNameField.text!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
