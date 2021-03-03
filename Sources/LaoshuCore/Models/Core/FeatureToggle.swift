import Foundation

public enum FeatureToggleName: String, Codable {
    case adIsEnabled = "ad_is_enabled"
    
    public var defaultValue: Bool {
        switch self {
        case .adIsEnabled:
            return false
        }
    }
}

public struct FeatureToggle: Codable {
    public let name: FeatureToggleName
    public let value: Bool
    
    public init(name: FeatureToggleName, value: Bool) {
        self.name = name
        self.value = value
    }
}
