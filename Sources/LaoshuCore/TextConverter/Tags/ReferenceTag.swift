import Foundation

struct ReferenceTag: RegexReplaceableTag {
    var regex: NSRegularExpression = try! NSRegularExpression(
        pattern: "\\[\\s*ref\\](.*?)\\[\\/\\s*ref\\]",
        options: []
    )
    var template: String = "<a href=\"$1\">$1</a>"
}
