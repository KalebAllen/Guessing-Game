//
//  main.swift
//  Guessing Game
//
//  Created by Kaleb Allen on 8/20/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import Foundation

//
//  main.swift
//  Gussing Game
//
//  Created by Kaleb Allen on 8/16/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//
import Foundation
var replay = ""
repeat{
    let randomNumber = arc4random_uniform(99) + 1
    var numberOfTries = 6
    var userGuess: Int?
    var success = true
    print("pick an number between 1-100, player")
    
    repeat{
        repeat{
            let input = readLine()!
            if input == "give me the answer" {
                print("the answer is \(randomNumber)")
            }
            userGuess = Int(readLine()!)
            if userGuess == nil {
                print("only 1 - 100 ya doof")
            }
            else if userGuess! < 1 || userGuess! > 100 {
                print("only 1 - 100 ya dingus")
            }
        } while userGuess == nil || userGuess! < 1 || userGuess! > 100
        numberOfTries -= 1
        if userGuess! > randomNumber {
            print("too high guess again")
        }
        if userGuess! < randomNumber {
            print("too low guess again")
        }
        if numberOfTries == 0 {
            success = false
        }
    } while userGuess! != randomNumber && numberOfTries > 0
    if success == true {
        print("wooohh you won!!!!😎")
    }
    else {
        print("whelp you lost 😢")
    }
    print("play again ??? 🤔")
    replay = readLine()!
} while replay.lowercased() == "yes"











