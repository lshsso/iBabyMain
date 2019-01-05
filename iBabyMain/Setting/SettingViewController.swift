//
//  ViewController.swift
//  iBabyMain
//
//  Created by SSO on 31/12/2018.
//  Copyright © 2018 sso. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    
   
    /*
    @IBAction func EditSave(_ sender: Any) {
        
        let mainTabController = storyboard?.instantiateViewController(withIdentifier: "MainTabController") as! MainTabController
        mainTabController.selectedViewController = mainTabController.viewControllers?[1]
        present(mainTabController, animated: true, completion: nil)
       
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        세그웨이준비
        if segue.identifier == "MasterToDetail" {
            어느세그웨이
            let detailViewController = segue.destinationViewController as! DetailViewController
            어느화면으로
            detailViewController.paper = sender as? Paper
            프로퍼티값
        }
    }*/

    
    
    @IBOutlet var PWeakField: UITextField!
    
    let datePicker = UIDatePicker()
    
   // private var datePicker : UIDatePicker?
    
    @IBOutlet var BabyNameField: UITextField!
    
   
    

  

override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let secondController = segue.destination as! MainView
        secondController.LabelText = BabyNameField.text!
        secondController.LblText = PWeakField.text! 
    }
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()    
        createDatePicker()
    }
    
    //CREATE DATEPICKER
    
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
