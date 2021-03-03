import Foundation

protocol ReplacableTagCollection: ReplacableTag {
    associatedtype Element
    var collection: [Element] { get }
}

extension ReplacableTagCollection where Self.Element: ReplacableTag {
    func replacedTags(in string: String) -> String {
        collection.reduce(string) { (previous, replacable) -> String in
            replacable.replacedTags(in: previous)
        }
    }
}
