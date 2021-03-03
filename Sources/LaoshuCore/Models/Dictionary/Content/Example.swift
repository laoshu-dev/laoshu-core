import Foundation

public struct Example {
    public let original: String
    public let example: String
    
    public init(original: String,
                example: String) {
        self.original = original
        self.example = example
    }
    
    public enum Keys: String {
        case original
        case example
    }
}
