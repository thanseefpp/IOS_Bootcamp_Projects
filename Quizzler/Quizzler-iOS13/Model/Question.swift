//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by THANSEEF on 25/01/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation


struct Question {
    let questionName : String
    let answersArray : [String]
    let correctAnswers : String
    
    init(q:String,a:[String],correctAnswer:String){
        self.questionName = q
        self.answersArray = a
        self.correctAnswers = correctAnswer
    }
}
