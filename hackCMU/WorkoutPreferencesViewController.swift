//
//  WorkoutPreferencesViewController.swift
//  hackCMU
//
//  Created by Michael Kelvyn Chan on 08/09/2017.
//
//

import UIKit

class WorkoutPreferencesViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var longTimeView: UIPickerView!
    @IBOutlet var shortTimeView: UIDatePicker!
    let longTimeViewData = ["2 weeks","1 month","3 months","6 months","1 year"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        longTimeView.delegate = self
        longTimeView.dataSource = self
        longTimeView.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return longTimeViewData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return longTimeViewData[row]
    }
    
  /*  func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let attributedString = NSAttributedString(string: "Your string name here", attributes: [NSForegroundColorAttributeName : UIColor.redColor()])
        return attributedString
    } */
    

    @IBAction func onSegmentControlPress(_ sender: Any) {
        if segmentedControl.selectedSegmentIndex == 0 {
            longTimeView.isHidden = true
            shortTimeView.isHidden = false
        } else if segmentedControl.selectedSegmentIndex == 1 {
            longTimeView.isHidden = false
            shortTimeView.isHidden = true
        } else {
            
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
