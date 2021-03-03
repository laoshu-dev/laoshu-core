import Foundation

struct ITag: SimpleReplaceableTag {
    var partsToReplace: [String : String] =
        [
            "[i]": "<i>",
            "[/i]": "</i>"
        ]
}
