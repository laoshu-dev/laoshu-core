import Foundation

public struct ObservationResult<T> {
    public let deleted: [T]
    public let inserted: [T]
    public let modificated: [T]
    
    public init(deleted: [T], inserted: [T], modificated: [T]) {
        self.deleted = deleted
        self.inserted = inserted
        self.modificated = modificated
    }
}
