//
//  File.swift
//  
//
//  Created by Anton Tkalikov on 27.02.2021.
//

import Foundation

struct MTag: IdentifableTag, SimpleReplaceableTag {
    let power: Int?
    var identifier: TagIdentifier { .margin(power) }
    
    init(power: Int? = nil) {
        self.power = power
    }
    
    var partsToReplace: [String : String] {
        var parts: [String : String] = ["[/m]": "</p>"]
        
        if let power = power {
            parts["[m\(power)]"] = "<p\(identifier.tagIdentifierValue)>"
        } else {
            parts["[m]"] = "<p\(identifier.tagIdentifierValue)>"
        }
        
        return parts
    }
}

struct MTagCollection: ReplacableTagCollection {
    var collection: [AnyReplacableTag] =
        [
            AnyReplacableTag(value: MTag()),
            AnyReplacableTag(value: MTag(power: 1)),
            AnyReplacableTag(value: MTag(power: 2)),
            AnyReplacableTag(value: MTag(power: 3)),
            AnyReplacableTag(value: MTag(power: 4)),
            AnyReplacableTag(value: MTag(power: 5)),
            AnyReplacableTag(value: MTag(power: 6)),
            AnyReplacableTag(value: MTag(power: 7)),
            AnyReplacableTag(value: MTag(power: 8)),
            AnyReplacableTag(value: MTag(power: 9))
        ]
}
