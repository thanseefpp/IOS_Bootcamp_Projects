//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggTimer = ["Soft":5,"Medium":7,"Hard":12]
    var audioPlayer : AVAudioPlayer?
    var secondsPassed = 0
    var totalTime = 0
    var timer = Timer()
    @IBOutlet weak var progressBarView: UIProgressView!
    @IBOutlet weak var headChange: UILabel!
    @IBAction func eggButtonPressed(_ sender: UIButton) {
        
        timer.invalidate() // this will create the variable func as new so the timer will increase the speed every time u press the button.
        let hardness = sender.currentTitle!
        progressBarView.progress = 0.0
        secondsPassed = 0
        headChange.text = hardness
//        switch title {
//        case "Soft":
//            print(eggTimer["Soft"]!)//unwrapped optional values using !
//        case "Medium":
//            print(eggTimer["Medium"]!)
//        case "Hard":
//            print(eggTimer["Hard"]!)
//        default:
//            print("Something went Wrong!")
//        }
//        print(eggTimer[hardness]!)
        
        totalTime = eggTimer[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer(){ // @objc is using because we are using a function as objective-c method
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressBarView.progress = Float(secondsPassed) / Float(totalTime)
            
        }else{
            timer.invalidate()//will stop the timer "rest"
            headChange.text = "Done"
            let soundURL = Bundle.main.path(forResource: "alarm_sound", ofType: "mp3")!
            let url = URL(fileURLWithPath: soundURL)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
                }
            catch {
                print("something went wrong")
            }
        }
    }
    
    
    
    
    
    
    
}
