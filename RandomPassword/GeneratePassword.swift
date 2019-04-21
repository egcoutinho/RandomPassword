//
//  GeneratePassword.swift
//  RandomPassword
//
//  Created by Eduardo Coutinho on 15/02/2018.
//  Copyright © 2018 CyberShark. All rights reserved.
//

import Foundation

private let characters = Array("0123456789abcdefghijklmnopqrstuvwxyz" + "ABCDEFGHIJKLMNOPQRSTUVWXYZ")

func generateRandomString(length: Int) -> String
{
    var string = ""
    
    for _ in 0..<length
    {
        string.append(generateRandomCharacter())
    }
    
    return string
}

func generateRandomCharacter() -> Character
{
    // Create a random index into the characters array
    let index = characters.count.arc4random()
    
    // Get and return a random character
    let character = characters[index]
    
    return character
}

extension Int
{
    func arc4random() -> Int
    {
        var rc: Int = 0
        
        if self > 0 {
            rc = Int(arc4random_uniform(UInt32(self)))
        }
        else if self < 0 {
            rc = -Int(arc4random_uniform(UInt32(abs(self))))
        }
        
        return rc
        
    }
}
