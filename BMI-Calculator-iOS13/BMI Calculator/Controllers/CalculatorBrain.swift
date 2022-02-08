
import UIKit

struct CalculatorBrain {
    
    var bmiValue :BMI?
    
    mutating func calculateBMI(height:Float,weight:Float){
        let bmiValues = weight / pow(height, 2) // swift method to find power of a value
        if bmiValues < 18.5 {
            bmiValue = BMI(color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1) , advise: "Eat more pies!", value: bmiValues)
        }else if bmiValues <= 24.9{
            bmiValue = BMI(color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1), advise: "Maintain your food!", value: bmiValues)
        }else{
            bmiValue = BMI(color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1) , advise: "Eat less pies!", value: bmiValues)
        }
        
    }
    func getBMI()-> String{
        let bmiFinalVal = String(format: "%.1f", bmiValue?.value ?? 0.0) // nil coalescing method used to avoid the optional error.
        return bmiFinalVal
    }
    
    func getAdvise() -> String {
        return bmiValue?.advise ?? ""
    }
    func getColor()-> UIColor{
        return bmiValue?.color ?? UIColor.green
    }
    
}
