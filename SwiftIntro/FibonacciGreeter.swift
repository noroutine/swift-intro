//
//  FibonacciGreeter.swift
//  SwiftIntro
//
//  Created by Oleksii Khilkevych on 09/11/14.
//  Copyright (c) 2014 Oleksii Khilkevych. All rights reserved.
//

import Foundation

class FibonacciGreeter: Greeter {
    
    let fibonacci = FibonacciGenerator()
    
    override func hello() -> String {
        return String(fibonacci.next())
    }
    
}