//
//  Word.swift
//  Parser
//
//  Created by Anton Tkalikov on 22.05.2020.
//  Copyright © 2020 atkalikov. All rights reserved.
//

import Foundation

public struct Word {
    public let original: String
    public let transcription: String?
    public let description: String
    public let antonyms: [Antonym]
    public let synonyms: [Synonym]
    public var isFavorite: Bool
    
    public init(original: String,
                transcription: String?,
                description: String,
                antonyms: [Antonym] = [],
                synonyms: [Synonym] = [],
                isFavorite: Bool = false) {
        self.original = original
        if transcription == "_" {
            self.transcription = nil
        } else {
            self.transcription = transcription
        }
        self.description = description
        self.isFavorite = isFavorite
        self.antonyms = antonyms
        self.synonyms = synonyms
    }
}

extension Word: Hashable, Equatable {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.original == rhs.original
    }
}
