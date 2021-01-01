//
//  Antonym.swift
//  Models
//
//  Created by Anton Tkalikov on 03.06.2020.
//  Copyright © 2020 Anton Tkalikov. All rights reserved.
//

import Foundation

public struct Antonym: Hashable, Equatable {
    public let content: String
    public let opposite: String
    
    public init(content: String, opposite: String) {
        self.content = content
        self.opposite = opposite
    }
}
