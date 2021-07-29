//
//  LoginViewController.swift
//  TDDSnipApp
//
//  Created by Ramata N’diaye on 7/28/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  
    @IBAction func loginVerification(_ sender: UIButton) {
        if userName.text?.isEmpty == true && password.text?.isEmpty == true {
            loginBtn.isEnabled = false
        }   else {
            loginBtn.isEnabled = true
        }
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
