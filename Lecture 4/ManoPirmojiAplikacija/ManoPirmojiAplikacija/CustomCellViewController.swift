//
//  DelegacijuViewController.swift
//  ManoPirmojiAplikacija
//
//  Created by Romas Petkus on 2022-09-28.
//

import UIKit

class CustomCellViewController: UIViewController {
    @IBOutlet weak var manoTableView: UITableView!
    var zadintuvoValandos: [Int] = [4, 6, 7, 12]
    var zadintuvoMinutes: [Int] = [30, 25, 40, 55]
    var arIjungtasZadintuvas: [Bool] = [true, false, true, true]
    override func viewDidLoad() {
        super.viewDidLoad()
        manoTableView.delegate = self
        manoTableView.dataSource = self
        // kai naudojam custom nibus privalom juos uzregistruot table view
        manoTableView.register(UINib(nibName: "ManoTableViewCell", bundle: nil), forCellReuseIdentifier: "zadintuvoCele")
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

// MARK: - Patogus budas atskirti protokolu implementacijas
// MARK: - UITableViewDataSource
extension CustomCellViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        zadintuvoValandos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "zadintuvoCele", for: indexPath) as! ManoTableViewCell
        
        cell.zadintuvoLaikoLabel.text = "\(zadintuvoValandos[indexPath.row]):\(zadintuvoMinutes[indexPath.row])"
        cell.manoSwitchas.isOn = arIjungtasZadintuvas[indexPath.row]
        return cell
    }
}

// MARK: - UITableViewDelegate
extension CustomCellViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Snoooz")
    }
}
