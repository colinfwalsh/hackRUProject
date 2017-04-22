//
//  Colors.swift
//  hackRUProject
//
//  Created by Colin Walsh on 4/22/17.
//  Copyright © 2017 Colin Walsh. All rights reserved.
//

import Foundation
import QuartzCore
import UIKit

class Colors {
    var gl:CAGradientLayer!
    
    init() {
        
        let colorTop = UIColor(red:0.00, green:0.35, blue:0.65, alpha:1.0).cgColor
        let colorBottom = UIColor(red:0.00, green:0.40, blue:0.70, alpha:1.0).cgColor
        
        self.gl = CAGradientLayer()
        self.gl.colors = [colorTop, colorBottom]
        self.gl.locations = [0.0, 1.0]
    }
}
