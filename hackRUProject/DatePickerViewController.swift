//
//  DatePickerViewController.swift
//  hackRUProject
//
//  Created by Colin Walsh on 4/23/17.
//  Copyright © 2017 Colin Walsh. All rights reserved.
//

import UIKit

class DatePickerViewController: UIViewController {

    @IBOutlet var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.datePicker.datePickerMode = .time

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        
        let clockFormat = DateFormatter()
        
        clockFormat.dateFormat = "hh:mm a"
        
        let stringDisplay = clockFormat.string(from: self.datePicker.date)
        
        print(stringDisplay)
    }


}
