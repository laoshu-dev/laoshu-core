import Foundation

public enum SpeakingSpeed: Int, CaseIterable {
    case slowest = 0
    case slow = 1
    case normal = 2
    case fast = 3
    case fastest = 4
    
    public var rate: Float {
        switch self {
        case .slowest:
            return 0.2
        case .slow:
            return 0.3
        case .normal:
            return 0.4
        case .fast:
            return 0.5
        case .fastest:
            return 0.6
        }
    }
}
