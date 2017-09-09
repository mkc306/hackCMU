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
    var labelText:String = "No Muscles Selected"
    
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
            if labelText == "No Muscles Selected" {
                labelText = "Chest"
                bodyPartsLabel.text = "\(labelText)"
                bodyPartsLabel.textColor = UIColor.lightGray
            } else {
                chestButton.setImage(#imageLiteral(resourceName: "ChestHighlighted"), for: .normal)
                labelText = labelText + "Chest"
                bodyPartsLabel.text = "\(labelText)"
                bodyPartsLabel.textColor = UIColor.black
                isChestSelected = true
                
            }
        }
    }
    
    //Just apply this function to both R & L biceps
    @IBAction func onRBicepButtonPress(_ sender: UIButton) {
        if isRBicepSelected {
            rBicepButton.setImage(#imageLiteral(resourceName: "BicepR"), for: .normal)
            lBicepButton.setImage(#imageLiteral(resourceName: "BicepL"), for: .normal)
            
            if bodyPartsLabel.text == "No Muscles Selected" {
                labelText = "Biceps"
                bodyPartsLabel.text = "\(labelText)"
                bodyPartsLabel.textColor = UIColor.lightGray
            } else {
                chestButton.setImage(#imageLiteral(resourceName: "ChestHighlighted"), for: .normal)
                labelText = labelText + "Biceps"
                bodyPartsLabel.text = "\(labelText)"
                bodyPartsLabel.textColor = UIColor.black
                isChestSelected = true
                
            }
        }
    }
    
    /* don't need this one
     @IBAction func onLBicepButtonPress(_ sender: UIButton) {
     }
     */
    
    @IBAction func onAbsButtonPress(_ sender: UIButton) {
        if isAbsSelected {
            absButton.setImage(#imageLiteral(resourceName: "Abs"), for: .normal)
            if bodyPartsLabel.text == "No Muscles Selected" {
                labelText = "Abs"
                bodyPartsLabel.text = "\(labelText)"
                bodyPartsLabel.textColor = UIColor.lightGray
            } else {
                chestButton.setImage(#imageLiteral(resourceName: "ChestHighlighted"), for: .normal)
                labelText = labelText + "Abs"
                bodyPartsLabel.text = "\(labelText)"
                bodyPartsLabel.textColor = UIColor.black
                isChestSelected = true
            }
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
