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
    
    
    override func viewDidLoad() {
        //This is what shows as soon as the app launches.
        super.viewDidLoad()
        //Set the diceImageView1 to the image literal dice 6... use the Who.What = Where diceImageView1.image = image literal
        //then image literal pops up and you can choose the actual image
        //Our app will make the left dice a six dice and its alpha value to 0.5
        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
        //diceImageView1.alpha = 0.5
        
        //Our app will make the right dice a two
        //WHO          What    Value
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
    }
    
    //IBAction area is for the UI to tell the code what to do
    //Add the button here use the control button and tap the button within the UI
    //Then name the button, select it as UIButton, and select Touch Up Inside to click the button within the button box for it to work.
    //This is the roll button on the UI
    //This is called an IBAction not an outlet, its an action which happens when you click the thing
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got tapped.")//Prints this statement into the console.
        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
        diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
    }
    
}

