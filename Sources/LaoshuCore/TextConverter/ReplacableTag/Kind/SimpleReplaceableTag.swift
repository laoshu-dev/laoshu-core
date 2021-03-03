import Foundation

protocol SimpleReplaceableTag: ReplacableTag {
    var partsToReplace: [String: String] { get }
}

extension SimpleReplaceableTag {
    func replacedTags(in string: String) -> String {
        partsToReplace.reduce(string) { (previous, dict) -> String in
            previous.replacingOccurrences(of: dict.key, with: dict.value)
        }
    }
}

extension SimpleReplaceableTag where Self: ReplacableTagCollection, Self.Element: SimpleReplaceableTag {
    var partsToReplace: [String: String] {
        var buffer: [String: String] = [:]
        self.collection.forEach {
            buffer.merge($0.partsToReplace) { _, new in new }
        }
        return buffer
    }
}
