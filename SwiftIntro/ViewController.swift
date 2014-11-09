//
//  ViewController.swift
//  SwiftIntro
//
//  Created by Oleksii Khilkevych on 09/11/14.
//  Copyright (c) 2014 Oleksii Khilkevych. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var greeter: Greeter = FibonacciGreeter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonTouched(sender: AnyObject) {
        let hello = greeter.hello()
        NSLog(hello)
        
        label.text = hello
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

