import Foundation

struct SubTag: SimpleReplaceableTag {
    var partsToReplace: [String : String] =
        [
            "[sub]": "<sub>",
            "[/sub]": "</sub>"
        ]
}
