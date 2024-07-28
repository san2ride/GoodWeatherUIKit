//
//  SettingsTableViewController.swift
//  WeatherApp
//
//  Created by Jason Sanchez on 7/28/24.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    private var settingsViewModel = SettingsViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension SettingsTableViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsViewModel.units.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let settingsItem = settingsViewModel.units[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath)
        cell.textLabel?.text = settingsItem.displayName
        return cell
    }
}
