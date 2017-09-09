//
//  UIViewController+SetBackgroundImage.swift
//  dSummit
//
//  Created by Michael Kelvyn Chan on 10/01/2017.
//  Copyright © 2017 Digi. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func setBackgroundImage(image_name: String ,alpha:CGFloat){
        let bgImage = UIImageView(image: UIImage(named: image_name))
        if self.navigationController == nil {
            bgImage.frame = self.view.frame
        } else {
            bgImage.frame = CGRect(x: 0, y: 44, width: Int(self.view.frame.width), height: Int(self.view.frame.height - 44))
        }
        bgImage.contentMode =  .scaleAspectFill
        bgImage.alpha = alpha
        view.addSubview(bgImage)
        view.sendSubview(toBack: bgImage)
    }
}
