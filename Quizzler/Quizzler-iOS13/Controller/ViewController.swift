//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreSection: UILabel!
    
    @IBOutlet weak var trueButtonTwo: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! // to get the text(label) from the button
        
        //        let answerValue = quiz[questionNumber].answer // to get the array 2nd element
        let userGotitRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotitRight {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.getNextQuestion()
        
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionName() //two dimentional array (taking value of first element)
        scoreSection.text = "Score :\(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        trueButtonTwo.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.progressChanger()
        
        trueButtonTwo.setTitle("\(quizBrain.getAnswerLabel(0))", for: .normal)
        trueButton.setTitle("\(quizBrain.getAnswerLabel(1))", for: .normal)
        falseButton.setTitle("\(quizBrain.getAnswerLabel(2))", for: .normal)
    }
}

