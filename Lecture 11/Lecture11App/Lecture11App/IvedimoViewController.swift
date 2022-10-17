//
//  IvedimoViewController.swift
//  Lecture11App
//
//  Created by Romas Petkus on 2022-10-17.
//

import UIKit

class IvedimoViewController: UIViewController {

    @IBOutlet weak var vardoTextField: UITextField!
    @IBOutlet weak var telTextField: UITextField!
    
    var onNameAndPhoneAdd: ((String, String) -> ())!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapPrideti(_ sender: Any) {
        onNameAndPhoneAdd(vardoTextField.text!, telTextField.text!)
        
        navigationController?.popViewController(animated: true)
        dismiss(animated: true)
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
