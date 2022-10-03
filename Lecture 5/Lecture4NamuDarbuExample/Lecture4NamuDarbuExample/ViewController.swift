//
//  ViewController.swift
//  Lecture4NamuDarbuExample
//
//  Created by Romas Petkus on 2022-10-03.
//

import UIKit
// ND uzd 1 sprendimas:
class ViewController: UIViewController {
    @IBOutlet weak var pakvietimuTableView: UITableView!
    @IBOutlet weak var vardoTextField: UITextField!
    
    var pakviestiAsmenys: [String] = ["Antanas", "Jonas", "Petras", "Romas", "Algimantas"]
    var arPrieme: [Bool] = [false, true, true, false, true]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pakvietimuTableView.delegate = self
        pakvietimuTableView.dataSource = self
        
        pakvietimuTableView.register(UINib(nibName: "PakvietimoTableViewCell", bundle: nil), forCellReuseIdentifier: "pakvietimoCele")
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressPrideti(_ sender: Any) {
        pakviestiAsmenys.append(vardoTextField.text!)
        arPrieme.append(false)
        pakvietimuTableView.reloadData()
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pakviestiAsmenys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cele: PakvietimoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "pakvietimoCele", for: indexPath) as! PakvietimoTableViewCell
        
        cele.vardoLabel.text = pakviestiAsmenys[indexPath.row]
        if arPrieme[indexPath.row] {
            cele.arPakviestasView.backgroundColor = .green
        } else {
            cele.arPakviestasView.backgroundColor = .red
        }
        
        return cele
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            pakviestiAsmenys.remove(at: indexPath.row)
            arPrieme.remove(at: indexPath.row)
            pakvietimuTableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(pakviestiAsmenys[indexPath.row])
    }
}
