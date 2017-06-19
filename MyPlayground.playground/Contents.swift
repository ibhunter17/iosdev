//: Playground - noun: a place where people can play

import UIKit

var username="nitish"
var password="hi"

if username=="nitish" && password=="hi" {
    print("They are correct")
}

else if username=="nitish" && password != "hi" {
   print("Password is not correct")
}
else if username != "nitish" && password=="hi" {
    print("Username is not correct")
    
}
else  {
    print("Both are incorrect")
}

let diceRoll = arc4random_uniform(10)
