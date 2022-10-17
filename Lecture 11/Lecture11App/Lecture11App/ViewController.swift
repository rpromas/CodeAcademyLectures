//
//  ViewController.swift
//  Lecture11App
//
//  Created by Romas Petkus on 2022-10-17.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var info: [(vardas: String, tel: String)] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ContactTableViewCell", bundle: nil), forCellReuseIdentifier: "contactCell")
        // Do any additional setup after loading the view.
    }
    
    func addName(name: String, phoneNumber: String) {
        info.append((name, phoneNumber))
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? IvedimoViewController {
            // pirmas variantas
            // destination.onNameAndPhoneAdd = addName
            
            // antras variantas
            destination.onNameAndPhoneAdd = {
                self.info.append(($0, $1))
                self.tableView.reloadData()
            }
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        info.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! ContactTableViewCell
        cell.contactLabel.text = "\(info[indexPath.row].vardas) - \(info[indexPath.row].tel)"
        return cell
    }
    
    
}
