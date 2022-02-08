//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by THANSEEF on 03/02/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue:String? // optional string created to secure the screen from error
    var advise:String?
    var colorPlate : UIColor?
    
    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var AdviseLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResultLabel.text = bmiValue
        AdviseLabel.text = advise
        view.backgroundColor = colorPlate
    }
    
    @IBAction func backToCalculation(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
