//
//  DictionaryDirectives.swift
//  Parser
//
//  Created by Anton Tkalikov on 22.05.2020.
//  Copyright © 2020 atkalikov. All rights reserved.
//

import Foundation

public struct DictionaryDirectives {
    public let name: String
    public let indexLanguage: String
    public let contentsLanguage: String
    
    public init(name: String,
                indexLanguage: String,
                contentsLanguage: String) {
        self.name = name
        self.indexLanguage = indexLanguage
        self.contentsLanguage = contentsLanguage
    }
}
