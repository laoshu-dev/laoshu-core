//
//  FlashCard.swift
//  Models
//
//  Created by Anton Tkalikov on 08.08.2020.
//  Copyright © 2020 Anton Tkalikov. All rights reserved.
//

import Foundation

public struct FlashCard {
    public let word: String
    public let power: Int
    public let firstLearningDate: Date
    public let lastLearningDate: Date
    
    public init(word: String,
                power: Int = 0,
                firstLearningDate: Date = Date(),
                lastLearningDate: Date = Date()) {
        self.word = word
        self.power = power
        self.firstLearningDate = firstLearningDate
        self.lastLearningDate = lastLearningDate
    }
    
    public enum Keys: String {
        case word
        case power
        case firstLearningDate
        case lastLearningDate
    }
}
