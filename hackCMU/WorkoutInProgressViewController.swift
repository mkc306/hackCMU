//
//  WorkoutInProgressViewController.swift
//  hackCMU
//
//  Created by Michael Kelvyn Chan on 08/09/2017.
//
//

import UIKit
import SRCountdownTimer

class WorkoutInProgressViewController: UIViewController, SRCountdownTimerDelegate {
    @IBOutlet var timerView: SRCountdownTimer!
    @IBOutlet var hoursView: SRCountdownTimer!
    @IBOutlet var secondsView: SRCountdownTimer!
    @IBOutlet var endWorkoutButton: UIButton!
    /* public var lineWidth: CGFloat = 2.0
    public var lineColor: UIColor = .black
    public var trailLineColor: UIColor = UIColor.lightGray.withAlphaComponent(0.5)
    
    public var isLabelHidden: Bool = false
    public var labelFont: UIFont?
    public var timerFinishingText: String? */
   
    override func viewDidAppear(_ animated: Bool) {
        
    }

    func timerDidEnd() {
        
        endWorkoutButton.isEnabled = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        hoursView.delegate = self
        secondsView.delegate = self
        timerView.delegate = self
        timerView.lineColor = UIColor.orange
        hoursView.lineColor = UIColor.orange
        secondsView.lineColor = UIColor.orange
        endWorkoutButton.isEnabled = false
        let jeremyGif = UIImage.gifImageWithName(name: "giphy")
        let imageView = UIImageView(image: jeremyGif)
        imageView.frame = CGRect(x: 30.0, y: 300.0, width: 300, height: 300.0)
        view.addSubview(imageView)
       // timerView.start(beginingValue: 29, interval: 60)
//       hoursView.start(beginingValue: 1, interval: 3600)
       //  secondsView.start(beginingValue: 60, interval: 1)
                timerView.start(beginingValue: 0, interval: 60)
                hoursView.start(beginingValue: 0, interval: 3600)
                 secondsView.start(beginingValue: 0, interval: 1)

        hoursView.timerFinishingText = "You"
        timerView.timerFinishingText = "Did"
        secondsView.timerFinishingText = "It!"
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
