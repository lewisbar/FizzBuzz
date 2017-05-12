//
//  FizzBuzzError.swift
//  FizzBuzz
//
//  Created by Lennart Wisbar on 11.05.17.
//  Copyright © 2017 Lennart Wisbar. All rights reserved.
//

import Foundation

enum FizzBuzzError: String {
    case gameIsNil = "game is nil"
    case gameScoreIsNil = "gameScore is nil"
    
    static func log(_ error: FizzBuzzError) {
        let output = generateOutput(for: error)
        print(output)
    }
    
    static func generateOutput(for error: FizzBuzzError) -> String {
        return "\nERROR: \(error.rawValue)\n"
    }
}
