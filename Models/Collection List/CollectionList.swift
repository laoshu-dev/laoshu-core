//
//  CollectionList.swift
//  Models
//
//  Created by Anton Tkalikov on 17.07.2020.
//  Copyright © 2020 Anton Tkalikov. All rights reserved.
//

import Foundation

public struct CollectionList {
    public let uuid: String
    public let name: String
    public let words: [String]
    public let updatedDate: Date
    public let createdDate: Date
    
    public init(uuid: String, name: String, words: [String], createdDate: Date = Date(), updatedDate: Date = Date()) {
        self.uuid = uuid
        self.name = name
        self.words = words
        self.updatedDate = updatedDate
        self.createdDate = createdDate
    }
    
    public enum Keys: String {
        case uuid
        case name
        case words
        case updatedDate
        case createdDate
    }
}
