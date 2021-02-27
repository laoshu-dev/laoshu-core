import Foundation

struct SecondaryTag: IdentifableTag, SimpleReplaceableTag {
    var identifier: TagIdentifier { .secondary }
    
    var partsToReplace: [String : String] {
        [
            "[*]": "<span\(identifier.tagIdentifierValue)>",
            "[/*]": "</span>"
        ]
    }
}
