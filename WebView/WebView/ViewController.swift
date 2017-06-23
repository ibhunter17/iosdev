//
//  ViewController.swift
//  WebView
//
//  Created by Nitish Dang on 2017-06-22.
//  Copyright © 2017 Nitish Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        if let url = URL(string: "https://stackoverflow.com"){
        let request = NSMutableURLRequest(url:url)
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                data,response,error in
                if error != nil {
                    print(error)
                } else {
                
                    if let unwrappedData = data {
                    
                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        print(dataString)
                    
                    }
                
                }
              
            }
            task.resume()
    }
        webview.URL
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

