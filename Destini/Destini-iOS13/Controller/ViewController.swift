//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyModel = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceButtonPress(_ sender: UIButton) {
        let buttonPresedChoice = sender.currentTitle!
        storyModel.changeStory(buttonPresedChoice)
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        storyLabel.text = storyModel.storyLableChanger()
        choice1Button.setTitle(storyModel.choiceButtonOneTitle(), for: .normal)
        choice2Button.setTitle(storyModel.choiceButtonTwoTitle(), for: .normal)
    }
    
}

