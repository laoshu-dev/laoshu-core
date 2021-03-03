import Foundation

struct SupTag: SimpleReplaceableTag {
    var partsToReplace: [String : String] =
        [
            "[sup]": "<sup>",
            "[/sup]": "</sup>"
        ]
}
