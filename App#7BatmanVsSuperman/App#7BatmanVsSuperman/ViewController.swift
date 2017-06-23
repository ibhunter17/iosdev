//
//  ViewController.swift
//  App#7BatmanVsSuperman
//
//  Created by Nitish Dang on 2017-06-23.
//  Copyright © 2017 Nitish Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var winnerlabel: UILabel!
    @IBOutlet var playAgain: UIButton!
    
    @IBAction func playAfain(_ sender: Any) {
        activegame = true
        activePlayer = 1
        gameState=[0,0,0,0,0,0,0,0,0]
        var button:UIButton
        for i in 1..<10 {
            if let button = view.viewWithTag(i) as? UIButton {
                button.setImage(nil, for: [])
            }
            winnerlabel.isHidden=true
            playAgain.isHidden=true
            
            winnerlabel.center=CGPoint(x: winnerlabel.center.x-500, y:winnerlabel.center.y)
 playAgain.center=CGPoint(x: playAgain.center.x-500, y: playAgain.center.y)
        }
     
    }
    
    var activegame = true
    var activePlayer = 1
    var gameState=[0,0,0,0,0,0,0,0,0]
    var winningCombinations=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    @IBAction func buttonPressed(_ sender: UIButton) {
        let activePosition=sender.tag-1
        if gameState[activePosition]==0 && activegame{
        if activePlayer == 1 {
            gameState[activePosition]=activePlayer
             sender.setImage(UIImage(named:"9-2-angry-superman-png-thumb"), for: [])
            activePlayer=2
        }
        else{
            gameState[activePosition]=activePlayer
            sender.setImage(UIImage(named:"batman-png-36105"), for: [])
            activePlayer=1
        }
            
            for combination in winningCombinations {
                if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                    //Winner
                      activegame=false
                    winnerlabel.isHidden=false
                    playAgain.isHidden=false
                    if gameState[combination[0]] == 1 {
                    winnerlabel.text="Superman has won"
                    }
                    else {
                    winnerlabel.text="Batman has won"
                    }
                    UIView.animate(withDuration: 1, animations: {
                    self.winnerlabel.center = CGPoint(x: self.winnerlabel.center.x+500, y: self.winnerlabel.center.y)
                    self.playAgain.center = CGPoint(x: self.playAgain.center.x+500, y: self.playAgain.center.y)
                    
                    })
                }
            
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        winnerlabel.isHidden=true
        playAgain.isHidden=true
        
        winnerlabel.center=CGPoint(x: winnerlabel.center.x-500, y: winnerlabel.center.y)
        playAgain.center=CGPoint(x: playAgain.center.x-500, y: playAgain.center.y)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

