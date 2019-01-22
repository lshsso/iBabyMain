//
//  weightForm.swift
//  iBabyMain
//
//  Created by SSO on 10/01/2019.
//  Copyright © 2019 sso. All rights reserved.
//
import UIKit

class weightForm: UIViewController, UITextFieldDelegate {
    
    var weightLbl : String!
    
    @IBOutlet var txtField : UITextField!
    @IBAction func addWeight(_ sender: Any) {
   
        // ① 내용을 입력하지 않았을 경우, 경고한다.
        guard self.txtField.text?.isEmpty == false else {
            let alert = UIAlertController(title: nil,
                                          message: "내용을 입력해주세요",
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
            return
        }
        
        // ② MemoData 객체를 생성하고, 데이터를 담는다.
        let data = weightData()
        data.title = self.weightLbl
        data.title = txtField.text
        data.regdate = Date()

        // ③ 앱 델리게이트 객체를 읽어온 다음, memolist 배열에 MemoData 객체를 추가한다.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.weightlist.append(data)
        
        // ④ 작성폼 화면을 종료하고, 이전 화면으로 되돌아간다.
        _ = self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

