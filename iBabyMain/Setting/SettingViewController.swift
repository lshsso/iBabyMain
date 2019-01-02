//
//  ViewController.swift
//  iBabyMain
//
//  Created by SSO on 31/12/2018.
//  Copyright © 2018 sso. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
    
    @IBOutlet var PWeakField: UITextField!
    
    let datePicker = UIDatePicker()
    
   // private var datePicker : UIDatePicker?
    
    @IBOutlet var BabyNameField: UITextField!
    
    @IBAction func save(_ sender: Any)
    {
        if BabyNameField.text != ""
        {
            performSegue(withIdentifier: "segue", sender: self)
        }
        //me!!
        if PWeakField.text != ""
        {
            performSegue(withIdentifier: "segue", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let secondController = segue.destination as! MainView
        secondController.LabelText = BabyNameField.text!
        secondController.LblText = PWeakField.text! // me!!
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        createDatePicker()
        
       /* datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(SettingViewController.dateChanged(datePicker:)), for: .valueChanged)
        
        let TapGesture = UITapGestureRecognizer(target: self, action: #selector(SettingViewController.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(TapGesture)
        
        PWeakField.inputView = datePicker
         */
    }
   /* @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker)
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY/MM/DD"
        PWeakField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
        
        
        
    }*/
    func createDatePicker(){
        //Format the display of our datePicker
        datePicker.datePickerMode = .date
        //assign date Picker to our TextField
        PWeakField.inputView = datePicker
        //create a Toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        //add a done button on this toolbar
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneClicked))
        toolbar.setItems([doneButton], animated: true)
        PWeakField.inputAccessoryView = toolbar
    }
    @objc func doneClicked() {
        //format the date display in textField
        let dateFormatter = DateFormatter()
        //dateFormatter.dateStyle = .medium
        //dateFormatter.timeStyle = .none
        dateFormatter.dateFormat = "YYYY년 M월 d일"
    
        
        PWeakField.text = dateFormatter.string(from: datePicker.date)
        
        self.view.endEditing(true)
        //view.endEditing(true)
        
        
    }
}
