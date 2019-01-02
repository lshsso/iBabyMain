//
//  MainView.swift
//  iBabyMain
//
//  Created by SSO on 02/01/2019.
//  Copyright © 2019 sso. All rights reserved.
//
import Foundation
import UIKit

class MainView: UIViewController {
    
    @IBOutlet var BabyName: UILabel!
    
    @IBOutlet var PWeakLbl: UILabel!
    
    var LabelText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        BabyName.text = LabelText
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
