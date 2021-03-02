//
//  Synonym.swift
//  Models
//
//  Created by Anton Tkalikov on 03.06.2020.
//  Copyright © 2020 Anton Tkalikov. All rights reserved.
//

import Foundation

public struct Synonym: Codable, Hashable, Equatable {
    public let content: [String]
    
    public init(content: [String]) {
        self.content = content
    }
}
