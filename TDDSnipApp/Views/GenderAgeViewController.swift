//
//  GenderAgeViewController.swift
//  TDDSnipApp
//
//  Created by Ramata N’diaye on 7/28/21.
//

import UIKit

class GenderAgeViewController: UIViewController {

    @IBOutlet weak var agePicker: UITextField!
    @IBOutlet weak var genderPicker: UITextField!
    var currentTextfield: UITextField?
    
    let ageOptions = ["15-25","25-35","35-45","45-55","56+"]
    let genderOptions = ["Female","Male","Prefer not to say"]
    
    var pickerView = UIPickerView()
    
    //var genderPickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pickerView.dataSource = self
        pickerView.delegate = self
        agePicker.delegate = self
        genderPicker.delegate = self
        //genderPickerView.dataSource = self
        //genderPickerView.delegate = self
        
        agePicker.inputView = pickerView
        agePicker.textAlignment = .center
        genderPicker.inputView = pickerView
        genderPicker.textAlignment = .center
        
    }
    
    
    

}

extension GenderAgeViewController: UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate
{
   

   

    func textFieldDidBeginEditing(_ textField: UITextField) -> Bool {
        currentTextfield = textField
        self.pickerView.reloadAllComponents()
        return true
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
       
        if agePicker.isFirstResponder {
            return ageOptions.count
        }
        
        else if genderPicker.isFirstResponder{
            return genderOptions.count
        }
        return 1
            
       
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if agePicker.isFirstResponder {
            return ageOptions[row]
        }
        else if genderPicker.isFirstResponder{
        
        return genderOptions[row]
        }
        return nil
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
        if agePicker.isFirstResponder{
            agePicker.text = ageOptions[row]
            agePicker.resignFirstResponder()
        }
        else if genderPicker.isFirstResponder{
            genderPicker.text = genderOptions[row]
            genderPicker.resignFirstResponder()
        }
    }
    
    
}


