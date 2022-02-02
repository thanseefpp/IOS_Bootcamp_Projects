//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    
    @IBAction func KeyPressed(_ sender: UIButton) {
        let textData = sender.currentTitle! //unwrapped with ! bcs it contian optional values.
//        print(textData)
        
        playSound(data: textData)
        sender.layer.opacity = 20
    }
    
    
    func playSound(data:String) {
        guard let path = Bundle.main.path(forResource: data, ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
}

