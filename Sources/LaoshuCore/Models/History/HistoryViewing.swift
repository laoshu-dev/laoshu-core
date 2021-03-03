import Foundation

public struct HistoryViewing {
    public let word: String
    public let date: Date
    
    public init(word: String, date: Date = Date()) {
        self.word = word
        self.date = date
    }
    
    public enum Keys: String {
        case word
        case date
    }
}
