//
//  ViewController.swift
//  App#3-Is It Prime
//
//  Created by Nitish Dang on 2017-06-19.
//  Copyright © 2017 Nitish Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberText: UITextField!
    @IBOutlet weak var primeLabel: UILabel!
    func isItPrime(q : Int) -> String {
     var m=Int(sqrt(Double(q)))
    var returnString=""
        var isPrime = true
        while m >= 2 {
            if (q%m != 0){
                isPrime=true
            }
            else {
                isPrime=false
                m=1
            }
            m=m-1
        }
        
        if (isPrime){
            returnString="Prime"
        }
            
        else{
            returnString="Not Prime"
        }
    return returnString
    }
    @IBAction func isitPrime(_ sender: Any) {
        var int=Int(numberText.text!)
        if var g=int{
            var text=isItPrime(q: int!)
         primeLabel.text=text
        }
        else {
            primeLabel.text="Error"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        primeLabel.text=""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

