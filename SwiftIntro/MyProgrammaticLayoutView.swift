//
//  MyProgrammaticLayoutView.swift
//  SwiftIntro
//
//  Created by Oleksii Khilkevych on 09/11/14.
//  Copyright (c) 2014 Oleksii Khilkevych. All rights reserved.
//

import UIKit

typealias ButtonCallback = (AnyObject, UIEvent) -> ()

class MyProgrammaticLayoutView: UIView {

    var myButton: UIButton

    var myButtonTarget: ButtonEventTarget

    var callbackBlock: ButtonCallback?
    
    required init(coder aDecoder: NSCoder) {
        myButtonTarget = ButtonEventTarget()
        
        myButton = UIButton(frame: CGRect(x: 10, y: 10, width: 100, height: 20))
        
        myButton.backgroundColor = UIColor.blueColor()
        myButton.setTitle("Yo", forState: UIControlState.Normal)
        myButton.setNeedsDisplayInRect(CGRect(x: 0, y: 0, width: 100, height: 100))
        
        super.init(coder: aDecoder)!

        self.addSubview(myButton)


        myButton.addTarget(self, action: "buttonTouched", forControlEvents: UIControlEvents.TouchDown)
        
        // setup button callback
        self.callbackBlock = buttonPressed
    }

    func buttonPressed(sender: AnyObject, event: UIEvent) -> Void {
        NSLog("Touched")
    }

}
