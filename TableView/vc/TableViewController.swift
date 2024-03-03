//
//  ViewController.swift
//  TableView
//
//  Created by Haya Alqahtani on 03/03/2024.
//

import UIKit

class TableViewController: UITableViewController {
    
    var bankAccounts = ["Salary Account", "Saving Account"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bankAccounts.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = bankAccounts[indexPath.row]
        return cell
        
    }
}

