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
    
    var name: NRNameGenerator = NRNameGenerator()
    
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        UIApplication.sharedApplication()
            .setStatusBarHidden(true, withAnimation: UIStatusBarAnimation.None)

//        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "buttonTapped:"))

        var button: NRPushButton? = nil
        
        button = NRPushButton(frame: CGRect(x: 0,y: 0,width: 80, height: 80))
        button?.state = NRPushButtonState.withColor(UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48())))

        //                button?.layer.borderColor = UIColor.blueColor().CGColor
        //                button?.layer.borderWidth = 1
        
        button?.buttonText = name.next();
        button?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(MainViewController.buttonTapped(_:))))

        self.view.addSubview(button!)
        
//        var timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "buttonTapped:", userInfo: nil, repeats: true)
        
    }

    
    func buttonTapped(sender: AnyObject) {
//        for subview in self.view.subviews {
//            (subview as NRPushButton).backgroundColor = UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))
//        }
        let button: NRPushButton! = ((sender as! UITapGestureRecognizer).view) as! NRPushButton
        
        button.backgroundColor =  UIColor(red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))

        NSLog(greeter.hello(button.buttonText!))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

