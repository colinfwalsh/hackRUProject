//
//  ClockViewController.swift
//  hackRUProject
//
//  Created by Colin Walsh on 4/22/17.
//  Copyright © 2017 Colin Walsh. All rights reserved.
//

import UIKit

class ClockViewController: UIViewController {

    @IBOutlet var clockDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.updateClock()
        // Do any additional setup after loading the view.
    }

    func updateClock() {
        let clockFormat = DateFormatter()
        clockFormat.setLocalizedDateFormatFromTemplate("hh:mm:ss a")
        
        self.clockDisplay.text = clockFormat.string(from: Date())
        
        self.perform(#selector(self.updateClock), with: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
