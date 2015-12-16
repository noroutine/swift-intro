//
//  File.swift
//  SwiftIntro
//
//  Created by Oleksii Khilkevych on 16/11/14.
//  Copyright (c) 2014 Oleksii Khilkevych. All rights reserved.
//

import Foundation
import UIKit

class NRPushButtonState {

    var color: UIColor
    
    init() {
        self.color = UIColor.redColor()
    }

    class func withColor(color: UIColor) -> NRPushButtonState {
        let state = NRPushButtonState()
        state.color = color
        return state
    }
    
}