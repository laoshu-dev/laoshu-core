import Foundation

struct RemarkTag: IdentifableTag, SimpleReplaceableTag {
    var identifier: TagIdentifier { .remark }
    
    var partsToReplace: [String : String] {
        [
            "[p]": "<span\(identifier.tagIdentifierValue)>",
            "[/p]": "</span>"
        ]
    }
}
