import Foundation

struct ColorTag: IdentifableTag, RegexReplaceableTag {
    var identifier: TagIdentifier { .color("$1") }
    
    var regex: NSRegularExpression = try! NSRegularExpression(
        pattern: "\\[\\s*c(.*?)\\](.*?)\\[\\/\\s*c\\]",
        options: []
    )
    
    var template: String {
        "<span\(identifier.tagIdentifierValue)>$2</span>"
    }
}
