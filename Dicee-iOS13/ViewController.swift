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
    
    var leftDiceNumber = 0//the position in the dice array located below, default left dice's number in array (aka dice two)
    
    var rightDiceNumber = 5//the position in the dice array located below, default right dice's number in array (aka dice 6)
    
    override func viewDidLoad() {
        //This is what shows as soon as the app launches.
        super.viewDidLoad()
        //Who.What = Where
        //example diceImageView1.image = imageliteral
        
    }
    
    //IBAction area is for the UI to tell the code what to do
    //Add the button here use the control button and tap the button within the UI
    //Then name the button, select it as UIButton, and select Touch Up Inside to click the button within the button box for it to work.
    //This is the roll button on the UI
    //This is called an IBAction not an outlet, its an action which happens when you click the thing
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //print("Button got tapped.")//Prints this statement into the console.
        diceImageView1.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][leftDiceNumber]//the second [] is the position within the array, this is referenced by the leftDiceNumber variable above
        diceImageView2.image = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")][rightDiceNumber]//the second [] is the position within the array, this is referenced by the leftDiceNumber variable above
        leftDiceNumber = leftDiceNumber + 1
        rightDiceNumber = rightDiceNumber - 1
    }
    
}

