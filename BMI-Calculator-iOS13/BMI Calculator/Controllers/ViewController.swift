//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
//        print(String(format: "%.2f", sender.value))
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = ("\(height)m")
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
//        print(Int(sender.value))
        let weight = Int(sender.value)
        weightLabel.text = ("\(weight)kg")
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let heightValue = heightSlider.value
        let weightValue = weightSlider.value
        
//        let bmi = weightValue / (heightValue*heightValue) // this one also a possible method to find bmi
        let bmi = weightValue / pow(heightValue, 2) // swift method to find power of a value
        print(bmi)
    }
    
    
}

