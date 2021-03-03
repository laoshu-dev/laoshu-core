import Foundation

public struct Synonym: Codable, Hashable, Equatable {
    public let content: [String]
    
    public init(content: [String]) {
        self.content = content
    }
}
