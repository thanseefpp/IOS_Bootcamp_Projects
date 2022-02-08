//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        
        
        calculatorBrain.calculateBMI(height: heightValue, weight: weightValue)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMI()
            destinationVC.advise = calculatorBrain.getAdvise()
            destinationVC.colorPlate = calculatorBrain.getColor()
        }
    }
    
    
}

