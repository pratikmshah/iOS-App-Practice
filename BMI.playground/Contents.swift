import UIKit

func calculateBMI(weightPounds: Double, heightInFeet: Double, heightInInches: Double) {
    let height = (heightInFeet * 12 + heightInInches)
    let BMI = weightPounds * 703 / pow(height, 2)
    let shortBMI = String(format: "%.2f", BMI)
    var result = ""
    
    if BMI > 25 {
        result = "overweight"
    } else if BMI < 18.5 {
        result = "underweight"
    } else {
        result = "normal"
    }
    
    print("Your BMI is \(shortBMI) and you are \(result)")
}


calculateBMI(weightPounds: 230.0, heightInFeet: 5, heightInInches: 7)
