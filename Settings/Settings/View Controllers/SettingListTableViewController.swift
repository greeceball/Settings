//
//  SettingListTableViewController.swift
//  Settings
//
//  Created by Colby Harris on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

class SettingListTableViewController: UITableViewController{


    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SettingsController.settings.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else {return UITableViewCell()}
        
        let setting = SettingsController.settings[indexPath.row]
        cell.updateViews(with: setting)
        cell.delegate = self

        return cell
    }
}

extension SettingListTableViewController: SettingTableViewCellDelegate {
    func settingSwitchTapped(for cell: SettingTableViewCell) {
        //tableViewController -> modelController to update the isOn -> Cell update
        guard let index = tableView.indexPath(for: cell) else {return}
        let setting = SettingsController.settings[index.row]
        SettingsController.toggleIsOn(for: setting)
        cell.updateViews(with: setting)
    }
}
