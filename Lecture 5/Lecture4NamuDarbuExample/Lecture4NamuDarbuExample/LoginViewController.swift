//
//  LoginViewController.swift
//  Lecture4NamuDarbuExample
//
//  Created by Romas Petkus on 2022-10-03.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var informacinisLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let correctUsername = "Romas"
    let correctPassword = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameTextField.delegate = self
        passwordTextField.delegate = self
        informacinisLabel.text = ""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressLogin(_ sender: Any) {
        if usernameTextField.text == correctUsername && passwordTextField.text == correctPassword {
            performSegue(withIdentifier: "perejimasIWelcome", sender: nil)
        } else {
            print("Login unsuccessful")
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
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == usernameTextField {
            informacinisLabel.text = "Username should be atleast 6 characters"
        }
        
        if textField == passwordTextField {
            informacinisLabel.text = "Password should contain atleast one special character"
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == passwordTextField {
            return Int(string) != nil || string.isEmpty
        } else {
            return true
        }
    }

}

//extension LoginViewController: UITextFieldDelegate {
//
//}
