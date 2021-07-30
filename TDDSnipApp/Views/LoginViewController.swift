//
//  LoginViewController.swift
//  TDDSnipApp
//
//  Created by Ramata N’diaye on 7/28/21.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {

    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //loginBtn.isEnabled = false
        if userName.text?.isEmpty == false && password.text?.isEmpty == false {
             loginBtn.isEnabled = true
         }   else {
             loginBtn.isEnabled = false
         }
        //loginBtn.isEnabled = false
        
        

        // Do any additional setup after loading the view.
    }
    
  
    @IBAction func loginVerification(_ sender: Any) {
        /*if userName.text?.isEmpty == true && password.text?.isEmpty == true {
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "AfterLoginViewController") as! AfterLoginViewController
                self.present(newViewController, animated: true, completion: nil)
        }*/
       
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
       /* if userName.text?.isEmpty == true && password.text?.isEmpty == true {
            loginBtn.isEnabled = false
        }   else {
            loginBtn.isEnabled = true
        }*/
    }
    
    

    

}
