//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewOne: UIImageView! //IBOutlet means InterfaceBuild outlet
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    var arrayNames = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
    

    @IBAction func rollButtonPressed(_ sender: UIButton) {

        diceImageViewTwo.image = _ImageLiteralType(imageLiteralResourceName: arrayNames[Int.random(in: 0...5)])
        diceImageViewOne.image = _ImageLiteralType(imageLiteralResourceName: arrayNames[Int.random(in: 0...5)])
        
    }
    
}

