//
//  ViewController.swift
//  SwiftIntro
//
//  Created by Oleksii Khilkevych on 09/11/14.
//  Copyright (c) 2014 Oleksii Khilkevych. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {

    var greeter: Greeter = Greeter()
    
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        UIApplication.sharedApplication()
            .setStatusBarHidden(true, withAnimation: UIStatusBarAnimation.None)

        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "buttonTapped:"))

        let tappableSize = 40.0
        
        let amountHorizontal :Int = Int(floor(UIScreen.mainScreen().bounds.width.native / tappableSize))
        let amountVertical :Int = Int(floor(UIScreen.mainScreen().bounds.height.native / tappableSize))
        
        var (top, left) = (0.0, 0.0)
        var button: NRPushButton? = nil
        for _ in 1...amountVertical {
            for _ in 1...amountHorizontal {
                
                button = NRPushButton(frame: CGRect(x: left, y: top, width: tappableSize, height: tappableSize))
                
                button?.backgroundColor = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))
                
                button?.layer.cornerRadius = 5
                button?.layer.borderColor = UIColor.blueColor().CGColor
                button?.layer.borderWidth = 1
                
                button?.bounds = CGRectInset(button!.frame, 3.0, 3.0)
                
                self.view.addSubview(button!)
                
                left += tappableSize
            }
            
            (top, left) = (top + tappableSize, 0.0)
        }
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "buttonTapped:", userInfo: nil, repeats: true)
        
//        NSRunLoop.mainRunLoop().addTimer(timer, forMode: NSRunLoopCommonModes)

    }

    
    func buttonTapped(sender: AnyObject) {
        let hello = greeter.hello()
        for subview in self.view.subviews {
            (subview as NRPushButton).backgroundColor = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))
        }

        NSLog(hello)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

