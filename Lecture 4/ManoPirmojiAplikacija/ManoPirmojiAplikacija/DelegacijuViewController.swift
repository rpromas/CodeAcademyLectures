//
//  DelegacijuViewController.swift
//  ManoPirmojiAplikacija
//
//  Created by Romas Petkus on 2022-09-28.
//

import UIKit

class DelegacijuViewController: UIViewController, UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var skaiciuField: UITextField!
    @IBOutlet weak var manoTableView: UITableView!
    
    var manoSeguai: [String] = ["iPirma", "iAntra", "iTrecia", "customCellSegue"]
    var manoSeguePavadinai: [String] = ["Pirma uzduotis", "Antra uzduotis", "Trecia uzduotis", "Custom XIB cell pvz"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        skaiciuField.delegate = self
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Pradejau editint texta")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return Int(string) != nil
    }
    
    /* UZDUOTIS */
//    Now that you know about table view’s and navigation, clean up your storyboard and make all screens accessible
/*
 1. Reikia sukurti segue i kiekviena view controlleri
 2. Reikia kiekvienam segue priskirti unikalu identifier
 3. Kazkaip siuos identifierius susieti su table view celem
 4. View controlleris turi implementuoti UITableViewDataSource bei UITableViewDelegate
 5. Realiai reikia apsirasyti zemiau esancias funkcijas ir susiet su segue
 6. Nepamirstam uzsettint delegate ir data source (kaip ViewController) arba storyboarde arba kode! */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        manoSeguai.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Kuriu cele nr: \(indexPath.row)")
        let cell = tableView.dequeueReusableCell(withIdentifier: "manoCele", for: indexPath)
        
        cell.textLabel?.text = manoSeguePavadinai[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Paspaude eilute nr: \(indexPath.row)")

        // Kode performinam segue, sitoj vietoj reikia pagal paspausta cele daryti segue
        performSegue(withIdentifier: manoSeguai[indexPath.row], sender: nil)
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
