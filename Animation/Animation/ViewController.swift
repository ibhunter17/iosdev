//
//  ViewController.swift
//  Animation
//
//  Created by Nitish Dang on 2017-06-23.
//  Copyright © 2017 Nitish Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer ()
    var i=0;
    var filename="frame_0_delay-0.1s.gif"
    func startTimer (){
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.processTime), userInfo: nil, repeats: true)
    }
    func processTime(){
        image.image=UIImage(named: "frame_\(i)_delay-0.1s.gif")
        i=i+1
        filename="frame_\(i)_delay-0.1s.gif"
        print(filename)
          if (i==16){
                image.image=UIImage(named: filename)
               timer.invalidate()
                i=0
               image.image=UIImage(named: "frame_\(i)_delay-0.1s.gif")
            }

    }
    @IBOutlet var image: UIImageView!
    @IBAction func animate(_ sender: Any) {
        startTimer()
    }
    @IBAction func fadein(_ sender: Any) {
        image.alpha=0
        
        UIView.animate(withDuration: 1, animations: {
        self.image.alpha = 1
        
        })
    }
    @IBAction func slidein(_ sender: Any) {
        image.center=CGPoint(x: image.center.x-500, y: image.center.y)
        UIView.animate(withDuration: 2) {
            
             self.image.center=CGPoint(x: self.image.center.x+500, y: self.image.center.y)
        }
    }
    
    @IBAction func grow(_ sender: Any) {
        image.frame=CGRect(x: 0 ,y: 0 ,width: 0 ,height:0)
        UIView.animate(withDuration: 2) {
            
            self.image.frame=CGRect(x: 0 ,y: 0 ,width: 200 ,height:200)
        }
    }
    @IBAction func stop(_ sender: Any) {
        timer.invalidate()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

