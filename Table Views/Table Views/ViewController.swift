//
//  ViewController.swift
//  Table Views
//
//  Created by Nitish Dang on 2017-06-20.
//  Copyright © 2017 Nitish Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    var i=50
    var g=1
    @IBOutlet weak var slidervalue: UISlider!
    @IBOutlet weak var multi: UILabel!
    @IBOutlet weak var nummulti: UILabel!
    @IBOutlet weak var slidermultiple: UISlider!
    @IBOutlet weak var table: UITableView!
    @IBAction func slidermulti(_ sender: Any) {
        i=Int(slidermultiple.value)*5
        table.reloadData()
        nummulti.text="Number of multiples: \(i)"
    }
    @IBAction func slider(_ sender: Any) {
        g=Int(slidervalue.value)
        table.reloadData()
        multi.text="Multiplier: \(g)"
        
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return i
    
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    
    let cell=UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
    cell.textLabel?.text=String(g*(indexPath.row+1))
    return cell
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       g=Int(slidervalue.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

