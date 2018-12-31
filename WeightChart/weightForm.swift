//
//  weightItem.swift
//  iBabyMain
//
//  Created by SSO on 24/12/2018.
//  Copyright © 2018 sso. All rights reserved.
//

import UIKit

class weightForm :UIViewController, UINavigationControllerDelegate, UITextFieldDelegate  {

    var subject : String!
    
    @IBOutlet var contents :UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.contents.delegate = self
    }

    @IBAction func save(_ sender: Any) {
        
        // ① 내용을 입력하지 않았을 경우, 경고한다.
        guard self.contents.text?.isEmpty == false else { //?를 ! 로 바꿔보셈
            let alert = UIAlertController(title: nil,
                                          message: "내용을 입력해주세요",
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
            return
        }
        
        let data = dataM()
        
        data.title = self.subject
        data.regdate = Date()
        data.title = contents.text
        
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.imgList.append(data)
        
           _ = self.navigationController?.popViewController(animated: true)
    
}
}

    /*
    var title:String
    var completed:Bool
    var createdAt:Date
    var itemIdentifier:UUID
    
    func saveItem() {
        dataM.save(self, with: itemIdentifier.uuidString)
    }
    
    func deleteItem() {
        dataM.delete(itemIdentifier.uuidString)
    }
    
   // mutating func markAsCompleted() {
       // self.completed = true
    //    dataM.save(self, with: itemIdentifier.uuidString }
    
}
 */
