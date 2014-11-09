//
//  FibonacciGenerator.swift
//  SwiftIntro
//
//  Created by Oleksii Khilkevych on 09/11/14.
//  Copyright (c) 2014 Oleksii Khilkevych. All rights reserved.
//

import Foundation

class FibonacciGenerator {
    
    var _current = 0
    var _next = 1
    
    func next() -> Int {
        let yield = _current;
        
        (_current, _next) = (_next, _next + _current)

        return yield;
    }
}