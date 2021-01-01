//
//  ObservationResult.swift
//  Models
//
//  Created by Anton Tkalikov on 07.06.2020.
//  Copyright © 2020 Anton Tkalikov. All rights reserved.
//

import Foundation

public struct ObservationResult<T> {
    public let deleted: [T]
    public let inserted: [T]
    public let modificated: [T]
    
    public init(deleted: [T], inserted: [T], modificated: [T]) {
        self.deleted = deleted
        self.inserted = inserted
        self.modificated = modificated
    }
}
