//
//  WorkoutPreferences2ViewController.swift
//  hackCMU
//
//  Created by Michael Kelvyn Chan on 08/09/2017.
//
//

import UIKit

class WorkoutPreferences2ViewController: UIViewController {
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var nextButton: UIButton!
    var nameTitle = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.isEnabled = false
        nameTextField.addTarget(self, action: #selector(editingChanged), for: .editingChanged)
    }
    
    func editingChanged(_ textField: UITextField) {
        if textField.text?.characters.count == 1 {
            if textField.text?.characters.first == " " {
                textField.text = ""
                return
            }
        }
        guard  let name = nameTextField.text, !name.isEmpty
            else {
              
                nextButton.isEnabled = false
                return
        }
          nameTitle = name
        
        nextButton.isEnabled = true
    }
    
    


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? WorkoutListViewController {
            destination.title = self.nameTitle
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
