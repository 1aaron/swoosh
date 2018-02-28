//
//  BorderButton.swift
//  appSwoosh
//
//  Created by Developer on 2/28/18.
//  Copyright © 2018 Developer. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
