//
//  ProfilePicView.swift
//  hackCMU
//
//  Created by Michael Kelvyn Chan on 09/09/2017.
//
//

import UIKit

class ProfilePicView: UIImageView {

    override func awakeFromNib() {
        
        self.layoutIfNeeded()
        layer.cornerRadius = self.frame.height / 2
        layer.masksToBounds = true
        
    }

}
