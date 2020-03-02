//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Colby Harris on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

protocol SettingTableViewCellDelegate: class {
    //Step one
    func settingSwitchTapped(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {

    //MARK: - Outlets
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    //MARK: - Properties
    //Step 2
    weak var delegate: SettingTableViewCellDelegate?
    
    //MARK: - Actions
    @IBAction func settingSwitchToggled(_ sender: Any) {
        delegate?.settingSwitchTapped(for: self)
        
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
