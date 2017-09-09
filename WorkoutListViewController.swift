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
    var exerciseName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 4
        } else if section == 1 {
            return 7
        } else if section == 2 {
            return 8
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "placeholder \(indexPath.row)"
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
            return "Chest"
        case 2:
            return "Biceps"
        case 3:
            return "Abs"
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
