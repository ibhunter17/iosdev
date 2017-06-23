//
//  SecondViewController.swift
//  App#5-ToDo
//
//  Created by Nitish Dang on 2017-06-22.
//  Copyright © 2017 Nitish Dang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var ItemTextField: UITextField!
    
    @IBAction func add(_ sender: Any) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        var items:[String]
        if let tempItems = itemsObject as? [String] {
            items = tempItems
            items.append(ItemTextField.text!)
        } else {
        items = [ItemTextField.text!]
        
        }
        UserDefaults.standard.set(items, forKey: "items")
        ItemTextField.text=""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
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

