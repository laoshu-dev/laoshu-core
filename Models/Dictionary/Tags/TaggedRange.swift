//
//  TaggedRange.swift
//  Models
//
//  Created by Anton Tkalikov on 26.05.2020.
//  Copyright © 2020 Anton Tkalikov. All rights reserved.
//

import Foundation

public struct TaggedRange {
    public let kind: Tag.Kind
    public let range: Range<String.Index>
    
    public init(kind: Tag.Kind, range: Range<String.Index>) {
        self.kind = kind
        self.range = range
    }
}
