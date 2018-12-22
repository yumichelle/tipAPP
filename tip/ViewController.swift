//
//  ViewController.swift
//  tip
//
//  Created by ellehcim on 12/22/18.
//  Copyright © 2018 ellehcim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billLabel: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercent = [0.18, 0.2, 0.25]
        let bill = Double(self.billLabel.text!) ?? 0
        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        self.tipLabel.text = "$\(tip)"
        self.totalLabel.text = "$\(total)"


    }
    
    
    
}

