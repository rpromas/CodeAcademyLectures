//
//  KontaktuViewController.swift
//  ManoAntrojiPaskaita
//
//  Created by Romas Petkus on 2022-10-04.
//

import UIKit

class KontaktuViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    
    @IBOutlet weak var genderShowSwitch: UISwitch!
    @IBOutlet weak var phoneShowSwitch: UISwitch!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func rodyti(_ sender: Any) {
        var gender: String?
        var phone: String?
        
        if genderShowSwitch.isOn {
            gender = genderTextField.text
        }
        
        if phoneShowSwitch.isOn {
            phone = phoneTextField.text
        }
        
        ShowInfo(name: nameTextField.text!, surname: surnameTextField.text!, gender: gender, phone: phone)
    }
    
    func ShowInfo(name: String, surname: String, gender: String?, phone: String?) {
        var telefonoText: String = ""
        var genderText: String = ""

        if let gender = gender {
            genderText = "Lytis: \(gender)"
        }

        if let phone = phone {
            telefonoText = "Telefonas: \(phone)"
        }
        
        infoLabel.text = "Vardas: \(name) Pavarde: \(surname) \(genderText) \(telefonoText)"
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
