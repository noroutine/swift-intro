//
//  NRPushButton.swift
//  SwiftIntro
//
//  Created by Oleksii Khilkevych on 15/11/14.
//  Copyright (c) 2014 Oleksii Khilkevych. All rights reserved.
//

import Foundation
import UIKit

class NRPushButton: UIView {
    
     var states = [
        "ok": NRPushButtonState.withColor(UIColor.greenColor()),
        "warning": NRPushButtonState.withColor(UIColor.yellowColor()),
        "critical": NRPushButtonState.withColor(UIColor.redColor())
    ]

    var resource: NSURL?

    var _state: NRPushButtonState?
    
    var state: NRPushButtonState? {
        set {
            
            self._state = newValue
            if (newValue != nil) {
                self.backgroundColor = newValue!.color
            }
            
        }
        get {
            return self._state
        }
    }
    
    var buttonText: String?

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        initialize()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    func initialize() {
        self.bounds = CGRectInset(self.frame, 3.0, 3.0)
        self.layer.cornerRadius = 5
    }
    
}