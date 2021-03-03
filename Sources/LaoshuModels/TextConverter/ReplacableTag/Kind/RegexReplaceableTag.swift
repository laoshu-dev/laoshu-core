import Foundation

protocol RegexReplaceableTag: ReplacableTag {
    var regex: NSRegularExpression { get }
    var template: String { get }
}

extension RegexReplaceableTag {
    func replacedTags(in string: String) -> String {
        guard let swiftyRange = string.range(of: string) else { return string }
        let range = NSRange(swiftyRange, in: string)
        return regex.stringByReplacingMatches(in: string, options: [], range: range, withTemplate: template)
    }
}
