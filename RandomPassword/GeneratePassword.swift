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
    let index = Int(arc4random_uniform(UInt32(characters.count)))
    
    // Get and return a random character
    let character = characters[index]
    
    return character
}
