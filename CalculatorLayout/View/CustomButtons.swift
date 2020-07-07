//
//  CustomButtons.swift
//  CalculatorLayout
//
//  Created by Victor Monteiro on 7/6/20.
//  Copyright © 2020 Atomuz. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override func awakeFromNib() {
        setupNumberButton()
    }
    
    func setupNumberButton() {
        self.backgroundColor = .numberButton
        self.tintColor = .numbersColor
        self.addCornerRadius()
    }
}

class CustomOperationButton: UIButton {
    
    override func awakeFromNib() {
        setupOperationButton()
    }
    func setupOperationButton() {
        self.backgroundColor = .functionButtonColor
        self.tintColor = .numbersColor
        self.addCornerRadius()
    }
}

class CustomTopButtons: UIButton {
    override func awakeFromNib() {
        setupTopButtons()
    }
    
    func setupTopButtons() {
        self.backgroundColor = .commandButton
        self.tintColor = .calculatorBackground
        self.addCornerRadius()
    }
}
