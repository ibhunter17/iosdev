//
//  ViewController.swift
//  pstorage
//
//  Created by Nitish Dang on 2017-06-22.
//  Copyright © 2017 Nitish Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberField: UITextField!
    
    @IBAction func save(_ sender: Any) {
        UserDefaults.standard.set(numberField.text, forKey: "number")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    let g=UserDefaults.standard.object(forKey: "number")
    
        
        if let num=g as? String{
            numberField.text = num
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

