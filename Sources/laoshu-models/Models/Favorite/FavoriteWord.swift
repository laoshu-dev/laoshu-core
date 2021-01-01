//
//  FavoriteWord.swift
//  Models
//
//  Created by Anton Tkalikov on 07.06.2020.
//  Copyright © 2020 Anton Tkalikov. All rights reserved.
//

import Foundation

public struct FavoriteWord {
    public let word: String
    public let date: Date
    
    public init(word: String, date: Date = Date()) {
        self.word = word
        self.date = date
    }
    
    public enum Keys: String {
        case word
        case date
    }
}
