//
//  TreciosUzduotiesViewController.swift
//  ManoPirmojiAplikacija
//
//  Created by Romas Petkus on 2022-09-26.
//

import UIKit

var ikeltasIAppstore: Bool = true

//class Log {
//    func LogMessage(_ message: String) {
//        if ikeltasIAppstore {
//            SaveMessageInDB(message)
//        } else {
//            print(message)
//        }
//    }
//}

class TreciosUzduotiesViewController: UIViewController {

    var textasKuriSettinsiu: String = ""
    
    @IBOutlet weak var mygtukas: UIButton!
    @IBOutlet weak var manoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manoLabel.text = textasKuriSettinsiu
        print("Uzkrove TreciosUzduotiesViewController")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Pasimate TreciosUzduotiesViewController")
    }
    
    @IBAction func DidTapMygtukas(_ sender: Any) {
        print("Hello world")
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
