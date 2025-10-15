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
    
    var fullText: String = ""
    
    func increment(input: Int) {
        fullText.removeFirst(number.count)
        number += "\(input)"
        fullText = number + fullText
    }
    func clear() {
        number = ""
    }
    func plus() {
        if (stack.count < 2) {
            fullText = "\nnot enough operands\n" + fullText
        } else {
            let n1 : Double = stack.popLast()!
            let n2 : Double = stack.popLast()!
            let oldFullText = fullText
            fullText = "\n\(n2+n1)\n+"
            fullText += "\(oldFullText)"
            stack.append(n2 + n1)
        }
    }
    func minus() {
        if (stack.count < 2) {
            fullText = "\nnot enough operands\n" + fullText
        } else {
            let n1 : Double =  stack.popLast()!
            let n2 : Double =  stack.popLast()!
            let oldFullText = fullText
            fullText = "\n\(n2-n1)\n-"
            fullText += "\(oldFullText)"
            stack.append(n2 - n1)
        }
    }
    func multiply() {
        if (stack.count < 2) {
            fullText = "\nnot enough operands\n" + fullText
        } else {
            let n1 : Double = stack.popLast()!
            let n2 : Double = stack.popLast()!
            let oldFullText = fullText
            fullText = "\n\(n2*n1)\nx"
            fullText += "\(oldFullText)"
            stack.append(n2 * n1)
        }
    }
    func divide() {
        if (stack.count < 2) {
            fullText = "\nnot enough operands\n" + fullText
        } else {
            let n1 : Double = stack.popLast()!
            let n2 : Double = stack.popLast()!
            let oldFullText = fullText
            fullText = "\n\(n2/n1)\n/"
            fullText += "\(oldFullText)"
            stack.append(n2 / n1)
        }
    }
    func enter() {
        fullText = "\n\(fullText)"
        let saved = Double(number)
        if (saved == nil) {
            fullText = "\nnot a number" + fullText
        } else {
            stack.append(saved!)
            number = ""
        }
    }
    func showStack() {
        fullText = "\n\(stack)" + fullText
    }
}
