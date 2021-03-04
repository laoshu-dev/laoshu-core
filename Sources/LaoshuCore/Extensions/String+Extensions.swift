import Foundation

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
    
    public var byWords: [String] {
        let options: NSLinguisticTagger.Options = [.omitWhitespace, .omitPunctuation, .omitOther]
        let schemes = [NSLinguisticTagScheme.lexicalClass]
        let tagger = NSLinguisticTagger(tagSchemes: schemes, options: Int(options.rawValue))
        let range = NSMakeRange(0, (self as NSString).length)
        tagger.string = self
        
        var tokens: [String] = []
        tagger.enumerateTags(in: range, scheme: .lexicalClass, options: options) { (tag, tokenRange, _, _) in
            let token = (self as NSString).substring(with: tokenRange)
            tokens.append(token)
        }
        return tokens
    }
    
    public func guessLanguage() -> String? {
        let length = self.utf16.count
        let languageCode = CFStringTokenizerCopyBestStringLanguage(self as CFString, CFRange(location: 0, length: length)) as String? ?? ""
        let locale = Locale(identifier: languageCode)
        return locale.localizedString(forLanguageCode: languageCode)
    }
}
