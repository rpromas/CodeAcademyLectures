//
//  ViewController.swift
//  ManoPirmojiAplikacija
//
//  Created by Romas Petkus on 2022-09-26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var burnytesTextas: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func paspaudeMygtuka(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ejimasITreciaUzduoti" {
            (segue.destination as? TreciosUzduotiesViewController)?.textasKuriSettinsiu = burnytesTextas.text!
        }
    }
    
    @IBAction func kitaButtonPaspaude(_ sender: Any) {
        performSegue(
            withIdentifier: "ejimasITreciaUzduoti",
            sender: nil)
    }
}

