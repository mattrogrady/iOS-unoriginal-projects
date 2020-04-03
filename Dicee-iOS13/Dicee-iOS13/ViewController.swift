//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    

    @IBAction func roll_button_pressed(_ sender: UIButton) {
        // Assign x and y to random integers from 0-5
        let x = Int.random(in: 0..<6)
        let diceArr = [ #imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        
        // array format: [element 1, element 2, ... element n][index to access]
        // FORMAT: who.what = value
        //         variable.attribute = value
        // Two different ways for randomisation
        //      randomElement() or accessing with integer index
        dice1.image = diceArr.randomElement()
        dice2.image = diceArr[x]
    }
    
}
