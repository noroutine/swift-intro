//
//  MyProgrammaticLayoutView.swift
//  SwiftIntro
//
//  Created by Oleksii Khilkevych on 09/11/14.
//  Copyright (c) 2014 Oleksii Khilkevych. All rights reserved.
//

import UIKit

class MyProgrammaticLayoutView: UIView {

    var myButton: MyButton
    
    required init(coder aDecoder: NSCoder) {
        myButton = MyButton()
        
        myButton.setTitle("Yo", forState: UIControlState.Normal)
        myButton.setNeedsDisplayInRect(CGRect(x: 0, y: 0, width: 100, height: 100))

        super.init(coder: aDecoder)
        self.addSubview(myButton);
    }
}
