import Foundation

public struct HistoryRequest {
    public let request: String
    public let date: Date
    
    public init(request: String, date: Date = Date()) {
        self.request = request
        self.date = date
    }
    
    public enum Keys: String {
        case request
        case date
    }
}
