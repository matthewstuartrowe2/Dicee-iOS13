//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
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


}

