import Foundation
#if os(Linux)
    import CoreFoundation
    import Glibc
#endif

extension String {
    public var cleaned: String {
        self.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    public var encodeUrl: String {
        return addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
    }
    
    public var decodeUrl: String {
        return self.removingPercentEncoding ?? ""
    }
    
    public var byEnumeratedWords: [String] {
        guard let range = self.range(of: self) else { return [] }
        var words: [String] = []
        
        self.enumerateSubstrings(in: range, options: .byWords) { (substring, _, _, _) in
            if let string = substring, !string.cleaned.isEmpty {
                words.append(string)
            }
        }
        
        return words
    }
}
