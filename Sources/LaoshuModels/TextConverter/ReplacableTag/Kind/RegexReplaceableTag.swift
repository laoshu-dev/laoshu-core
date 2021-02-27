import Foundation

protocol RegexReplaceableTag: ReplacableTag {
    var regex: NSRegularExpression { get }
    var template: String { get }
}

extension RegexReplaceableTag {
    func replacedTags(in string: String) -> String {
        string.replacingGroups(matching: regex, with: template)
    }
}
