//
//  MakeWorkoutViewController.swift
//  hackCMU
//
//  Created by Michael Kelvyn Chan on 08/09/2017.
//
//

import UIKit

class MakeWorkoutViewController: UIViewController {
    @IBOutlet var bodyPartsLabel: UILabel!
    @IBOutlet var chestButton: UIButton!
    @IBOutlet var rBicepButton: UIButton!
    @IBOutlet weak var absButton: UIButton!
    @IBOutlet weak var lBicepButton: UIButton!
    
    var isChestSelected = false
    var isRBicepSelected  = false
    var isLBicepSelected  = false
    var isAbsSelected  = false
    let nothing:String = "No Muscles Selected"
    var labelText:String = "No Muscles Selected"
    var originalText:String = "No Muscles Selected"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if bodyPartsLabel.text == "No Muscles Selected" {
            bodyPartsLabel.textColor = UIColor.lightGray
        }
        
    }
    
    @IBAction func onChestButtonPress(_ sender: Any) {
        if isChestSelected {
            chestButton.setImage(#imageLiteral(resourceName: "Chest"), for: .normal)
            if labelText == nothing{
                bodyPartsLabel.textColor = UIColor.lightGray
            }
            
            if labelText.range(of: "Chest") != nil{
                labelText = originalText
                bodyPartsLabel.text = "\(labelText)"
                isChestSelected = false
            }
        } else {
            if labelText == nothing{
                labelText = "Chest"
                bodyPartsLabel.text = "\(labelText)"
                bodyPartsLabel.textColor = UIColor.black
            }
            else {
                originalText = labelText
                labelText = originalText + ", Chest"
                bodyPartsLabel.text = "\(labelText)"
                bodyPartsLabel.textColor = UIColor.black            }
            chestButton.setImage(#imageLiteral(resourceName: "ChestHighlighted"), for: .normal)
            isChestSelected = true
            
        }
    }
    
    @IBAction func onRBicepButtonPress(_ sender: UIButton) {
        if isRBicepSelected {
            rBicepButton.setImage(#imageLiteral(resourceName: "BicepR"), for: .normal)
            lBicepButton.setImage(#imageLiteral(resourceName: "BicepL"), for: .normal)
            if labelText == nothing{
                bodyPartsLabel.textColor = UIColor.lightGray
            }
        
            if labelText.range(of: "Biceps") != nil{
            labelText = originalText
            bodyPartsLabel.text = "\(labelText)"
            isRBicepSelected = false
            isLBicepSelected = false
            }
        } else {
            if labelText == nothing{
                labelText = "Biceps"
                bodyPartsLabel.text = "\(labelText)"
                bodyPartsLabel.textColor = UIColor.black
            }
            else {
                originalText = labelText
                labelText = originalText + "Biceps"
                bodyPartsLabel.text = "\(labelText)"
                bodyPartsLabel.textColor = UIColor.black            }
            rBicepButton.setImage(#imageLiteral(resourceName: "BicepR Highlighted"), for: .normal)
            lBicepButton.setImage(#imageLiteral(resourceName: "BicepL highlighted"), for: .normal)
            isRBicepSelected = true
            isLBicepSelected = true
            
        }
    }
    
    @IBAction func onLBicepButtonPress(_ sender: UIButton) {
        if isLBicepSelected {
            rBicepButton.setImage(#imageLiteral(resourceName: "BicepR"), for: .normal)
            lBicepButton.setImage(#imageLiteral(resourceName: "BicepL"), for: .normal)
            if labelText == nothing{
                bodyPartsLabel.textColor = UIColor.lightGray
            }
            
            if labelText.range(of: "Biceps") != nil{
                labelText = originalText
                bodyPartsLabel.text = "\(labelText)"
                isRBicepSelected = false
                isLBicepSelected = false
            }
        } else {
            if labelText == nothing {
                labelText = "Biceps"
                bodyPartsLabel.text = "\(labelText)"
                bodyPartsLabel.textColor = UIColor.black
            }
            else {
                originalText = labelText
                labelText = originalText + ", Biceps"
                bodyPartsLabel.text = "\(labelText)"
                bodyPartsLabel.textColor = UIColor.black            }
            rBicepButton.setImage(#imageLiteral(resourceName: "BicepR Highlighted"), for: .normal)
            lBicepButton.setImage(#imageLiteral(resourceName: "BicepL highlighted"), for: .normal)
            isRBicepSelected = true
            isLBicepSelected = true
            
        }
    }
    
    @IBAction func onAbsButtonPress(_ sender: UIButton) {
        if isAbsSelected {
            absButton.setImage(#imageLiteral(resourceName: "Abs"), for: .normal)
            if labelText == nothing{
                bodyPartsLabel.textColor = UIColor.lightGray
            }
            
            if labelText.range(of: "Abs") != nil{
                labelText = originalText
                bodyPartsLabel.text = "\(labelText)"
                isAbsSelected = false
            }
        } else {
            if labelText == nothing{
                labelText = "Abs"
                bodyPartsLabel.text = "\(labelText)"
                bodyPartsLabel.textColor = UIColor.black
            }
            else {
                originalText = labelText
                labelText = originalText + ", Abs"
                bodyPartsLabel.text = "\(labelText)"
                bodyPartsLabel.textColor = UIColor.black            }
            absButton.setImage(#imageLiteral(resourceName: "Abs Highlighted"), for: .normal)
            isAbsSelected = true
            
        }
    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    
}
