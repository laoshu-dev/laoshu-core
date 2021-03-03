import Foundation

public struct TaggedRange {
    public let kind: Tag.Kind
    public let range: Range<String.Index>
    
    public init(kind: Tag.Kind, range: Range<String.Index>) {
        self.kind = kind
        self.range = range
    }
}
