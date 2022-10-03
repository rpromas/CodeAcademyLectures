//
//  ViewController.swift
//  ManoAntrojiPaskaita
//
//  Created by Romas Petkus on 2022-10-02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var manoTableView: UITableView!
    @IBOutlet weak var laikoPicker: UIDatePicker!
    
    var laikaiMinutemis: [Int] = []
    var arIjungtas: [Bool] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manoTableView.dataSource = self
        manoTableView.delegate = self
        
        manoTableView.register(UINib(nibName: "ZadintuvoTableViewCell", bundle: nil), forCellReuseIdentifier: "zadintuvoCell")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func addAlarm(_ sender: Any) {
        let date = laikoPicker.date
        let hour = Calendar.current.component(.hour, from: date)
        let minute = Calendar.current.component(.minute, from: date)
        laikaiMinutemis.append(hour * 60 + minute)
        arIjungtas.append(false)
        manoTableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return laikaiMinutemis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "zadintuvoCell", for: indexPath) as! ZadintuvoTableViewCell
        
        cell.laikasLabel.text = "\(laikaiMinutemis[indexPath.row] / 60) : \(laikaiMinutemis[indexPath.row] % 60)"
        // budas kaip rodyt pvz 04:05 (su nuliais prieky)
//        cell.laikasLabel.text = String(format: "%02d : %02d", laikai[indexPath.row] / 60, laikai[indexPath.row] % 60)
        cell.arIjungtasSwitch.isOn = arIjungtas[indexPath.row]
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            laikaiMinutemis.remove(at: indexPath.row)
            arIjungtas.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if arIjungtas[indexPath.row] {
            arIjungtas[indexPath.row] = false
        } else {
            arIjungtas[indexPath.row] = true
        }
        
        tableView.reloadData()
    }
}
