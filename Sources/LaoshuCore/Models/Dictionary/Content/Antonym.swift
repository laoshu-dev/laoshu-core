import Foundation

public struct Antonym: Codable, Hashable, Equatable {
    public let content: String
    public let opposite: String
    
    public init(content: String, opposite: String) {
        self.content = content
        self.opposite = opposite
    }
}
