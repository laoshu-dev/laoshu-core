//
//  HintImage.swift
//  Models
//
//  Created by Anton Tkalikov on 27.07.2020.
//  Copyright © 2020 Anton Tkalikov. All rights reserved.
//

import Foundation

public struct HintImage: Codable {
    public let link: String
    public let title: String
    public let height: Int
    public let width: Int
    
    public init(link: String, title: String, height: Int, width: Int) {
        self.link = link
        self.title = title
        self.height = height
        self.width = width
    }
}
