//: Playground - noun: a place where people can play

import UIKit



var q = 68593
var m=Int(sqrt(Double(q)))
var isPrime = true
while m >= 2 {
    if (q%m==0){
    isPrime=true
    }
    else {
        isPrime=false
        m=1
    }
 m=m-1
}

if (isPrime){
    print("The number is prime")
}

else{
    print("The number is not prime")
}