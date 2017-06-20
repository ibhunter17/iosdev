//
//  ViewController.swift
//  MenuBars
//
//  Created by Nitish Dang on 2017-06-20.
//  Copyright © 2017 Nitish Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var timer = Timer()
    
    @IBAction func button(_ sender: Any) {
        print("Timer stop")
         timer.invalidate()
    }
    func processTime()  {
        print("A second has passed")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTime), userInfo: nil, repeats: true)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

