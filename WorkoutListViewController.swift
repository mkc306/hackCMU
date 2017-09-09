//
//  WorkoutListViewController.swift
//  hackCMU
//
//  Created by Michael Kelvyn Chan on 08/09/2017.
//
//

import UIKit

class WorkoutListViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    let ALL_ARRAY = ["Barbell Bicep Curl","Pull Ups","Inclined Dumbell Press","Leg Raises", "Pec Dec Macuine"]
    let ABS_ARRAY = ["Sit-ups","Crunches","Deadbug"]
    let CHEST_ARRAY = ["Bench Press","Incline Flyes","Push Ups"]
    let BICEPS_ARRAY = ["Bicep Curls","Hammer Curls","Barbell Curl"]
    var exerciseName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 5
        } else if section == 1 {
            return 3
        } else if section == 2 {
            return 3
        } else if section == 3 {
            return 3
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = ALL_ARRAY[indexPath.row]
        case 1:
            cell.textLabel?.text = ABS_ARRAY[indexPath.row]
        case 2:
            cell.textLabel?.text = CHEST_ARRAY[indexPath.row]
        case 3:
            cell.textLabel?.text = BICEPS_ARRAY[indexPath.row]
        default: return cell
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 25.0
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "All"
        case 1:
            return "Abs"
        case 2:
            return "Chest"
        case 3:
            return "Biceps"
        default: return ""
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        if let text = cell?.textLabel?.text{
            exerciseName = text
            self.performSegue(withIdentifier: "ToExerciseSegue", sender: self)
            
        }
    }
    
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ExerciseViewController {
            destination.title = self.exerciseName
        }
    }
    
}
