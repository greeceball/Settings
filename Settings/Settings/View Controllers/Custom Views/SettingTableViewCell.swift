//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Colby Harris on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

    //MARK: - Outlets
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    
    //MARK: - Actions
    @IBAction func settingSwitchToggled(_ sender: Any) {
        //TODO: - Add this
        
    }
    
    //MARK: - Helper Methods
    func updateViews(with settings: Setting) {
        settingIconImageView.image = settings.icon
        settingSwitch.isOn = settings.isOn
        settingNameLabel.text = settings.settingName
     
        backgroundColor = settings.isOn ? .cyan : .white
        
//        if setting.isOn == true {
//            backgroundColor = .cyan
//        }else {
//            backgroundColor = .white
//        }
    
    }
}
