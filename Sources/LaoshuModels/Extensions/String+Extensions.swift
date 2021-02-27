import Foundation

public extension String {
    /// Finds matching groups and replace them with a template using an intuitive API.
    ///
    /// This example will go through an input string and replace all occurrences of "MyGreatBrand" with "**MyGreatBrand**".
    ///
    ///     let regex = try! NSRegularExpression(pattern: #"(MyGreatBrand)"#) // Matches all occurrences of MyGreatBrand
    ///     someMarkdownDocument.replaceGroups(matching: regex, with: #"**$1**"#) // Surround all matches with **, formatting as bold text in markdown.
    ///     print(someMarkdownDocument)
    ///
    /// - Parameters:
    ///   - regex: the regex used to match groups.
    ///   - template: the template used to replace the groups. Reference groups inside your template using dollar sign symbol followed by the group number, e.g. "$1", "$2", etc.
    public mutating func replaceGroups(matching regex: NSRegularExpression, with template: String, options: NSRegularExpression.MatchingOptions = []) {
        var replacingRanges: [(subrange: Range<String.Index>, replacement: String)] = []
        let matches = regex.matches(in: self, options: options, range: NSRange(location: 0, length: utf16.count))
        for match in matches {
            var replacement: String = template
            for rangeIndex in 1 ..< match.numberOfRanges {
                let group: String = (self as NSString).substring(with: match.range(at: rangeIndex))
                replacement = replacement.replacingOccurrences(of: "$\(rangeIndex)", with: group)
            }
            replacingRanges.append((subrange: Range(match.range(at: 0), in: self)!, replacement: replacement))
        }
        for (subrange, replacement) in replacingRanges.reversed() {
            self.replaceSubrange(subrange, with: replacement)
        }
    }

    /// Finds matching groups and replace them with a template using an intuitive API.
    ///
    /// This example will go through an input string and replace all occurrences of "MyGreatBrand" with "**MyGreatBrand**".
    ///
    ///     let regex = try! NSRegularExpression(pattern: #"(MyGreatBrand)"#) // Matches all occurrences of MyGreatBrand
    ///     let result = someMarkdownDocument.replacingGroups(matching: regex, with: #"**$1**"#) // Surround all matches with **, the bold text modifier syntax in markdown.
    ///     print(result)
    ///
    /// - Parameters:
    ///   - regex: the regex used to match groups.
    ///   - template: the template used to replace the groups. Reference groups inside your template using dollar sign symbol followed by the group number, e.g. "$1", "$2", etc.
    public func replacingGroups(matching regex: NSRegularExpression, with transformationString: String) -> String {
        var mutableSelf = self
        mutableSelf.replaceGroups(matching: regex, with: transformationString)
        return mutableSelf
    }
}
