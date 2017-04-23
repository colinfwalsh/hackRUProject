//
//  ViewController.swift
//  hackRUProject
//
//  Created by Colin Walsh on 4/22/17.
//  Copyright © 2017 Colin Walsh. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    @IBOutlet var numDisplay: UILabel!

    var displayLink: CADisplayLink!
    var lastDisplayLinkTimeStamp: CFTimeInterval!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.numDisplay.text = "0.0"
        
        // Initializing the display link and directing it to call our displayLinkUpdate: method when an update is available //
        self.displayLink = CADisplayLink(target: self, selector: #selector(self.displayLinkUpdate))
        
        // Ensure that the display link is initially not updating //
        self.displayLink.isPaused = true;
        
        // Scheduling the Display Link to Send Notifications //
        self.displayLink.add(to: RunLoop.main, forMode: RunLoopMode.commonModes)
        
        // Initial timestamp //
        self.lastDisplayLinkTimeStamp = 20
        
        
        refresh()
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func startButtonTapped(_ sender: Any) {
        
        self.displayLink.isPaused = !(self.displayLink.isPaused)
        
        
    }
    
    func refresh() {
        let colors = Colors()
        view.backgroundColor = UIColor.clear
        let backgroundLayer = colors.gl
        backgroundLayer?.frame = view.frame
        view.layer.insertSublayer(backgroundLayer!, at: 0)
    }
    
    
    func displayLinkUpdate(_ sender: CADisplayLink) {
        // Update running tally //
        self.lastDisplayLinkTimeStamp = self.lastDisplayLinkTimeStamp - self.displayLink.duration
        
        // Format the running tally to display on the last two significant digits //
        let formattedString:String = String(format: "%0.2f", self.lastDisplayLinkTimeStamp)
        
        // Display the formatted running tally //
        self.numDisplay.text = formattedString
        
        print("firing")
        
        if (self.lastDisplayLinkTimeStamp <= 0.00) {
            self.displayLink.isPaused = !(self.displayLink.isPaused)
            print("done")
        }
        
        
    }
    
    
    
}

