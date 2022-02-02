//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct Story{
    
    let titles : String
    let choiceOne : String
    let choiceTwo : String
    let choice1Destinations : Int
    let choice2Destinations : Int
    
    init(title:String,choice1:String,choice1Destination:Int,choice2:String,choice2Destination:Int){
        self.titles = title
        self.choiceOne = choice1
        self.choiceTwo = choice2
        self.choice1Destinations = choice1Destination
        self.choice2Destinations = choice2Destination
    }
    
}
