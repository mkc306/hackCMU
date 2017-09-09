//
//  WorkoutInProgressViewController.swift
//  hackCMU
//
//  Created by Michael Kelvyn Chan on 08/09/2017.
//
//

import UIKit

class WorkoutInProgressViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let jeremyGif = UIImage.gifImageWithName(name: "giphy")
        let imageView = UIImageView(image: jeremyGif)
        imageView.frame = CGRect(x: 30.0, y: 300.0, width: 300, height: 300.0)
        view.addSubview(imageView)
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
