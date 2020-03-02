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
    let settings: [Setting] = {
        let music = Setting(settingTitle: "Itunes", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(settingTitle: "App Store", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let iBooks = Setting(settingTitle: "iBooks", icon: #imageLiteral(resourceName: "iBooks"), isOn: false)
        return [music, appStore, iBooks]
    }()
    
    //MARK: - Methods
    
    func toggleIsOn(for setting: Setting) {
        
    }
}
