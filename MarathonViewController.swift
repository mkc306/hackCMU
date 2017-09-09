//
//  MarathonViewController.swift
//  hackCMU
//
//  Created by Michael Kelvyn Chan on 09/09/2017.
//
//

import UIKit

class MarathonViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    let TEMP_VALUES_1 = ["Long Sprints","Long Jogs","Long Walks"]
    let TEMP_VALUES_2 = ["Lunges","Leg Press","Squats"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

       
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 3
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Warmup"
        case 1:
            return "Runs"
        case 2:
            return "Leg Exercises"
        default: return ""
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = "Stretching"
        case 1:
            cell.textLabel?.text = TEMP_VALUES_1[indexPath.row]
        case 2:
            cell.textLabel?.text = TEMP_VALUES_2[indexPath.row]
        default: cell.textLabel?.text = ""
        }

        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        print(indexPath.row)
        print(indexPath.section)
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
