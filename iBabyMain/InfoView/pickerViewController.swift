//
//  pickerViewController.swift
//  iBabyMain
//
//  Created by SSO on 19/12/2018.
//  Copyright © 2018 sso. All rights reserved.
//

import UIKit

class pickerViewController: UIViewController{

  
    
    @IBOutlet var viewTemp: UILabel!
    
    @IBAction func stepper(_ sender: UIStepper) {
        
        var number = 0
        number = Int(sender.value)
        viewTemp.text = "임신 \(number) 주차"
        
    }
    
}
