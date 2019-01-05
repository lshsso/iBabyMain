//
//  imageForm.swift
//  iBabyMain
//
//  Created by SSO on 19/12/2018.
//  Copyright © 2018 sso. All rights reserved.
//

import UIKit

class imageForm: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var preview: UIImageView!
    
    //CREATE IMAGEPICKER
    @IBAction func pick(_ sender: Any) {
        let imgpicker = UIImagePickerController()
        imgpicker.sourceType = .photoLibrary
        imgpicker.allowsEditing = true
        imgpicker.delegate = self
        
        self.present(imgpicker, animated: false)
    }
    
    //이미지 선택 완료시
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let originalImage: UIImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.preview.image = originalImage
        }
        //미리보기에표시
        self.preview.image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
        //이미지피커 닫기
        picker.dismiss(animated: false)
    }
    
    //IMAGE SAVE
    @IBAction func save(_ sender:Any) {
        let data = imageData()
        data.image = self.preview.image
        data.weight = weekLbl.text
        
        
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.imagelist.append(data)
        
        _ = self.navigationController?.popViewController(animated: true)
    }
    //CREATE STEPPER
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
