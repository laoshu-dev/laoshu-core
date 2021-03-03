import Foundation

struct ExampleTag: IdentifableTag, SimpleReplaceableTag {
    var identifier: TagIdentifier { .example }
    
    var partsToReplace: [String : String] {
        [
            "[ex]": "<span\(identifier.tagIdentifierValue)>",
            "[/ex]": "</span>"
        ]
    }
}
