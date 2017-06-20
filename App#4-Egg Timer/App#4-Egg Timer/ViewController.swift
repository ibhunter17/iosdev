//
//  ViewController.swift
//  App#4-Egg Timer
//
//  Created by Nitish Dang on 2017-06-20.
//  Copyright © 2017 Nitish Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer ()
    var starter=300
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func subtractTen(_ sender: Any) {
        if (starter >= 0 && starter-10 >= 0){
        starter=starter-10
        timeLabel.text=String(starter)
        }
        else {
            print("cnat subtract")
        }
    }
   
    @IBAction func addTen(_ sender: Any) {
        starter=starter+10
        timeLabel.text=String(starter)
    }
    
    @IBAction func timeReset(_ sender: Any) {
        if timer.isValid {
            timer.invalidate()
            starter=300
            timeLabel.text=String(starter)
        }
        else {
            starter=300
            timeLabel.text=String(starter)
        }
    }
    
    @IBAction func timePause(_ sender: Any) {
        if timer.isValid {
            timer.invalidate()
        }
        else {
            print("Cant pause")
        }
    }
    @IBAction func timePlay(_ sender: Any) {
        if !timer.isValid {
        startTimer()
        }
        else {
            print("Cant play")
        }
    }
    func startTimer (){
         timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTime), userInfo: nil, repeats: true)
    }
    func processTime(){
        if starter == 0 {
            timer.invalidate()
            starter=300
            timeLabel.text=String(starter)
        }
        else {
        starter=starter-1
        timeLabel.text=String(starter)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timeLabel.text=String(starter)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

