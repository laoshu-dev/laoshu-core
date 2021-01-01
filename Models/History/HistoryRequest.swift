//
//  HistoryRequest.swift
//  Models
//
//  Created by Anton Tkalikov on 07.06.2020.
//  Copyright © 2020 Anton Tkalikov. All rights reserved.
//

import Foundation

public struct HistoryRequest {
    public let request: String
    public let date: Date
    
    public init(request: String, date: Date = Date()) {
        self.request = request
        self.date = date
    }
    
    public enum Keys: String {
        case request
        case date
    }
}
