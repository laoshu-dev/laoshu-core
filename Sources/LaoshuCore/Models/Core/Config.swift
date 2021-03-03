import Foundation

public struct Config: Codable {
    public let toggles: [FeatureToggle]
    public let databaseUrl: String
    
    public init(
        toggles: [FeatureToggle],
        databaseUrl: String
    ) {
        self.toggles = toggles
        self.databaseUrl = databaseUrl
    }
}

extension Config {
    public static var standart: Config {
        return .init(
            toggles: [],
            databaseUrl: "https://storage.yandexcloud.net/laoshu/dictionary.zip"
        )
    }
}
