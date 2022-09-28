//
//  KetvirtosUzduotiesViewController.swift
//  ManoPirmojiAplikacija
//
//  Created by Romas Petkus on 2022-09-26.
//

import UIKit

class KetvirtosUzduotiesViewController: UIViewController {
    @IBOutlet weak var moodSwitch: UISwitch!
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func DidTapButton(_ sender: Any) {
        if moodSwitch.isOn {
            view.backgroundColor = .red
        } else {
            view.backgroundColor = .white
        }
        
        var myIntValue: Int = Int(myTextField.text!)!
        
        myIntValue += 1
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
