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
    
    var resource: NSURL?

    var state: NRPushButtonState
    
    var buttonText: String?

    required init(coder aDecoder: NSCoder) {
        self.state = NRPushButtonState()

        super.init(coder: aDecoder)
        
        self.backgroundColor = self.state.color
    }
    
    override init(frame: CGRect) {
        self.state = NRPushButtonState()
        
        super.init(frame: frame)
        
        self.backgroundColor = self.state.color
    }
    
}