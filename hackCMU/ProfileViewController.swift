//
//  ProfileViewController.swift
//  hackCMU
//
//  Created by Michael Kelvyn Chan on 08/09/2017.
//
//

import UIKit



class ProfileViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet var profilePic: UIImageView!

    @IBOutlet var bmiLabel: UILabel!
    
    @IBOutlet var feetTextField: UITextField!
    @IBOutlet var poundsTextField: UITextField!
    @IBOutlet var inchesTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    let feet = String(describing: feetTextField.text!.characters.first!)
    let feetInt = Int(feet)
    let pounds = Int(poundsTextField.text!)
    let inches = Int(inchesTextField.text!)
        
    let bmi = calculateBMI(pounds: pounds!, feet: feetInt!, inches: inches!)
        if bmi > 25.0 {
            bmiLabel.text = "BMI: \(bmi)       Overweight"
        } else {
               bmiLabel.text = "BMI: \(bmi)       Normal"
        }
        
    }
    
    @IBAction func onUpdateButtonPress(_ sender: Any) {
        let feet = String(describing: feetTextField.text!.characters.first!)
        let feetInt = Int(feet)
        let pounds = Int(poundsTextField.text!)
        let inches = Int(inchesTextField.text!)
        
        let bmi = calculateBMI(pounds: pounds!, feet: feetInt!, inches: inches!)
        if bmi > 25.0 {
            bmiLabel.text = "BMI: \(bmi)       Overweight"
        } else {
            bmiLabel.text = "BMI: \(bmi)       Normal"
        }

    }
    func calculateBMI(pounds: Int, feet: Int, inches: Int) -> Double
    {
        let height = Double(feet) + (Double(inches)/12)
        let kilograms = Double(pounds) * 0.453592
        let meters = height * 0.3048
        print(kilograms)
        print(meters)
        
        let BMI = kilograms / pow(meters,2)
        
        return Double(round(1000*BMI)/1000)
    }

    
//    pounds = float(input("Pounds? "))
//    feet = float(input("Feet? "))
//    inches = float(input("Inches? "))
//    
//    feet = feet + (inches / 12)
//    
//    kilograms = pounds * 0.453592
//    meters = feet * 0.3048
//    
//    BMI = kilograms / (meters ** 2)
//    
//    BMI = round(BMI, 2)
//    
//    print(BMI)
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
