//
//  imageForm.swift
//  iBabyMain
//
//  Created by SSO on 19/12/2018.
//  Copyright © 2018 sso. All rights reserved.
//

import UIKit

class imageForm: UIViewController{

    @IBOutlet var weekLbl: UILabel!
    
    @IBAction func weekStepper(_ sender: UIStepper) {
        var number = 0
        number = Int(sender.value)
        weekLbl.text = "임신 \(number) 주차"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
