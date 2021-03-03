import Foundation

public struct ConverterModel {
    public var bkrsFilename: String?
    public var bruksFilename: String?
    public var examplesFilename: String?
    public var antonymsFilename: String?
    public var synonimsFilename: String?
    
    public init(
        bkrsFilename: String? = nil,
        bruksFilename: String? = nil,
        examplesFilename: String? = nil,
        antonymsFilename: String? = nil,
        synonimsFilename: String? = nil
    ) {
        self.bkrsFilename = bkrsFilename
        self.bruksFilename = bruksFilename
        self.examplesFilename = examplesFilename
        self.antonymsFilename = antonymsFilename
        self.synonimsFilename = synonimsFilename
    }
}
