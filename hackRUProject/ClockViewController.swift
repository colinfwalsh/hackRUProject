//
//  ClockViewController.swift
//  hackRUProject
//
//  Created by Colin Walsh on 4/22/17.
//  Copyright © 2017 Colin Walsh. All rights reserved.
//

import UIKit
import QuartzCore

class ClockViewController: UIViewController {

    @IBOutlet var clockDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateClock), userInfo: nil, repeats: true)
        
        // Do any additional setup after loading the view.
    }

    func updateClock() {
    
        let clockFormat = DateFormatter()
        
        clockFormat.dateFormat = "hh:mm:ss a"
        
        let stringDisplay = clockFormat.string(from: Date())
        
        
        self.clockDisplay.text = stringDisplay
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
