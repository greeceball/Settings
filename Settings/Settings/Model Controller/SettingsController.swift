//
//  SettingsController.swift
//  Settings
//
//  Created by Colby Harris on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import Foundation

class SettingsController {
    
    //MARK: - Source of Truth
    static let settings: [Setting] = {
        let music = Setting(settingName: "Itunes", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(settingName: "App Store", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let iBooks = Setting(settingName: "iBooks", icon: #imageLiteral(resourceName: "iBooks"), isOn: false)
        return [music, appStore, iBooks]
    }()
    
    //MARK: - Methods
    
    func toggleIsOn(for setting: Setting) {
        setting.isOn = !setting.isOn
    }
}
