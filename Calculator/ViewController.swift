//
//  ViewController.swift
//  Calculator
//
//  Created by Zacharias Mitzelos on 6/24/17.
//  Copyright © 2017 Zacharias Mitzelos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTypping = true
            
        }
        }
    
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }

    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTypping = false
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol {
                case "π":
                    displayValue = Double.pi
                case "√":
                    displayValue = sqrt(displayValue)
            default:
                break
            }
        }
    }
}

