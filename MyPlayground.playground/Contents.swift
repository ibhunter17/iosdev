//: Playground - noun: a place where people can play

import UIKit

class Ghost {
    var isAlive = true
    var strengh = 20
    func kill() {
        isAlive = false
    }
    func isStrong() ->  Bool {
        if strengh > 10 {
            return true
        }
        else {
            return false
        }
        
    }
}

var ghost=Ghost()

print(ghost.strengh)
print(ghost.isAlive)



ghost.kill()
print(ghost.isAlive)
ghost.isStrong()
