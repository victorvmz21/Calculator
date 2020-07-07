//
//  CalculatorViewController.swift
//  CalculatorLayout
//
//  Created by Victor Monteiro on 7/6/20.
//  Copyright © 2020 Atomuz. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    //MARK: - IBOutlet
     @IBOutlet weak var acButton:          UIButton!
     @IBOutlet weak var mediaButton:       UIButton!
     @IBOutlet weak var percentageButton:  UIButton!
     @IBOutlet weak var divideButton:      UIButton!
     @IBOutlet weak var sevenButton:       UIButton!
     @IBOutlet weak var eightButton:       UIButton!
     @IBOutlet weak var nineButton:        UIButton!
     @IBOutlet weak var timesButton:       UIButton!
     @IBOutlet weak var fourButton:        UIButton!
     @IBOutlet weak var fiveButton:        UIButton!
     @IBOutlet weak var sixButton:         UIButton!
     @IBOutlet weak var minusButton:       UIButton!
     @IBOutlet weak var oneButton:         UIButton!
     @IBOutlet weak var twoButton:         UIButton!
     @IBOutlet weak var threeButton:       UIButton!
     @IBOutlet weak var plusButton:        UIButton!
     @IBOutlet weak var zeroButton:        UIButton!
     @IBOutlet weak var perioButton:       UIButton!
     @IBOutlet weak var equalButton:       UIButton!
    @IBOutlet weak var resultsLabel:       UILabel!
    
    //MARK: - Variables
    var numberOnScreen: Double = 0
    var previousNumbeer: Double = 0
    var performingMath = false
    var operation = 0
    
    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        settingupView()
    }
    
    //MARK: - IBActions
    @IBAction func calculatorNumberButtonTapped(_ sender: UIButton) {
       if performingMath == true {
                   resultsLabel.text = String(sender.tag)
                   
                   numberOnScreen = Double(resultsLabel.text!)!
                   
                   performingMath = false
                   
               } else {
                   
                   resultsLabel.text = resultsLabel.text! + String(sender.tag)
                   
                   numberOnScreen = Double(resultsLabel.text!)!
               }
    }
    
    @IBAction func operationButtonTapped(_ sender: UIButton) {
         if resultsLabel.text != "" && sender.tag != 16 {
                previousNumbeer = Double(resultsLabel.text!)!
                
                if sender.tag == 12 { //Divide
                    
                    resultsLabel.text = "/";
                    
                }
                
                if sender.tag == 13 { //Multiply
                    
                    resultsLabel.text = "x";
                    
                }
                
                if sender.tag == 14 { //Subtract
                    
                    resultsLabel.text = "-";
                    
                }
                
                if sender.tag == 15 { //Add
                    
                    resultsLabel.text = "+";
                    
                }
                
                operation = sender.tag
                
                performingMath = true;
                
            }
            
            else if sender.tag == 16 {
            
            if operation == 12{ //Divide
            
            resultsLabel.text = String(previousNumbeer / numberOnScreen)
            
            }
            
            else if operation == 13{ //Multiply
            
            resultsLabel.text = String(previousNumbeer * numberOnScreen)
            
            }
            
            else if operation == 14{ //Subtract
            
            resultsLabel.text = String(previousNumbeer - numberOnScreen)
            
            }
            
            else if operation == 15{ //Add
            
            resultsLabel.text = String(previousNumbeer + numberOnScreen)
            
            }
            
            }
            
            else if sender.tag == 11{
            
            resultsLabel.text = ""
            
            previousNumbeer = 0;
            
            numberOnScreen = 0;
            
            operation = 0;
            
            }
        }

    
    //MARK: Methods
    func settingupView() {
        self.view.backgroundColor = .calculatorBackground
      
    }
}
