import Foundation

struct BTag: SimpleReplaceableTag {
    var partsToReplace: [String : String] =
        [
            "[b]": "<b>",
            "[/b]": "</b>"
        ]
}
