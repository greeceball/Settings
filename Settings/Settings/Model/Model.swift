//
//  Model.swift
//  Settings
//
//  Created by Colby Harris on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

/**
 Creates our Setting Object - <MODEL>
   - Properties:
        - name: The 'String' Identifier for the Setting
    - Icon: The 'UIImage' that matches the Setting
        - isOn: the 'Bool' to designiate whether the Settings is on or not
 
 */
class Setting {
    let settingTitle: String
    let icon: UIImage
    var isOn: Bool
    
    init(settingTitle: String, icon: UIImage, isOn: Bool) {
        self.settingTitle = settingTitle
        self.icon = icon
        self.isOn = isOn
    }
    
}
