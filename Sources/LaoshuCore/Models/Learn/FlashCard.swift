import Foundation

public struct FlashCard {
    public let word: String
    public let power: Int
    public let firstLearningDate: Date
    public let lastLearningDate: Date
    
    public init(word: String,
                power: Int = 0,
                firstLearningDate: Date = Date(),
                lastLearningDate: Date = Date()) {
        self.word = word
        self.power = power
        self.firstLearningDate = firstLearningDate
        self.lastLearningDate = lastLearningDate
    }
    
    public enum Keys: String {
        case word
        case power
        case firstLearningDate
        case lastLearningDate
    }
}
