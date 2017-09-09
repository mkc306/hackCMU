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
            if bodyPartsLabel.text == "No Muscles Selected" {
                bodyPartsLabel.textColor = UIColor.lightGray
            } else {
                chestButton.setImage(#imageLiteral(resourceName: "ChestHighlighted"), for: .normal)
                bodyPartsLabel.text = "Chest"
                bodyPartsLabel.textColor = UIColor.black
                isChestSelected = true

            }
        }
    }
    @IBAction func onRBicepButtonPress(_ sender: UIButton) {
        
    }
    
    @IBAction func onLBicepButtonPress(_ sender: UIButton) {
    }
    
    @IBAction func onAbsButtonPress(_ sender: UIButton) {
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
