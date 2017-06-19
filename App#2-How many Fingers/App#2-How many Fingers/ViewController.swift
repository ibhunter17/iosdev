//
//  ViewController.swift
//  App#2-How many Fingers
//
//  Created by Nitish Dang on 2017-06-19.
//  Copyright © 2017 Nitish Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterNumber: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func diceRoll(_ sender: Any) {
    var diceroll=Int(arc4random_uniform(6))
     var enteredDiceRoll=Int(enterNumber.text!)
        if enteredDiceRoll==diceroll{
            label.text="You're right"
        }
        else {
            label.text="Incorrect, the correct answer is \(diceroll)"
        }
     
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text=""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

