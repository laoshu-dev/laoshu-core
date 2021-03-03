import Foundation

public struct RemoteCollection: Codable {
    public let title: String
    public let subtitle: String
    public let words: [String]
    
    public init(title: String, subtitle: String, words: [String]) {
        self.title = title
        self.subtitle = subtitle
        self.words = words
    }
    
    public enum Keys: String {
        case title
        case subtitle
        case words
    }
}
