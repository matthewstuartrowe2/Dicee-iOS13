//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //IBOutlet section is for the code to tell the UI what to do.
    //Interface Builder Connections
    //Left Dice
    @IBOutlet weak var diceImageView1: UIImageView!
    //Right Dice
    @IBOutlet weak var diceImageView2: UIImageView!
    //IBAction area is for the UI to tell the code what to do
    //Add the button here use the control button and tap the button within the UI
    //Then name the button, select it as UIButton, and select Touch Up Inside to click the button within the button box for it to work.
    //This is the roll button on the UI
    //This is called an IBAction not an outlet, its an action which happens when you click the thing
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let diceArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        //Create a random number between 0 and 5 by typing Int.random(in:0...5) OR you can instead use .randomElement() which takes a random element in the array and there is no need to specify the range of the random numbers. USED FOR ARRAYS.
        diceImageView1.image = diceArray.randomElement()//the second [] is the position within the array, this will be a random location in the array between 0 and 5
        
        diceImageView2.image = diceArray.randomElement()

        
        
    }
    
}

