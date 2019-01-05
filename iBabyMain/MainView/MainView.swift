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
    var LblText = String()
    
    @IBAction func myExit(sender: UIStoryboardSegue){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // BabyName.text = "태아 이름을 등록해 주세요."
        //PWeakLbl.text = "출산 예정일을 등록해 주세요"
        
        BabyName.text = LabelText
        PWeakLbl.text = LblText
       


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
