//
//  MyNumber.swift
//  DemoRPN
//
//  Created by Lukas Devos on 08/10/2025.
//

import Foundation

@Observable class MyNumber {
    var stack = [Double]()
    var number = ""
    
    func increment(input: Int) {
        number += "\(input)"
    }
    func clear() {
        number = ""
    }
    func plus() {
        let n1 : Double = stack.popLast()!
        let n2 : Double = stack.popLast()!
        
        stack.append(n2 + n1)
    }
    func minus() {
        let n1 : Double =  stack.popLast()!
        let n2 : Double =  stack.popLast()!
        
        stack.append(n2 - n1)
    }
    func enter() {
        let saved = Double(number)
        stack.append(saved!)
        number = ""
    }
}
