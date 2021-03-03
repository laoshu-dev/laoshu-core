import Foundation

struct UTag: SimpleReplaceableTag {
    var partsToReplace: [String : String] =
        [
            "[u]": "<ins>",
            "[/u]": "</ins>"
        ]
}
