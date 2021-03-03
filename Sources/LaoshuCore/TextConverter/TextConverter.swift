import Foundation

public struct TextConverter {
    private let replaceCollection = ReplaceCollection()
    
    public init() { }
    
    public func dslToHtml(_ dsl: String) -> String {
        replaceCollection.replacedTags(in: dsl)
    }
}

extension TextConverter {
    private struct ReplaceCollection: ReplacableTagCollection {
        var collection: [AnyReplacableTag] = [
            AnyReplacableTag(value: MTagCollection()),
            AnyReplacableTag(value: BTag()),
            AnyReplacableTag(value: ITag()),
            AnyReplacableTag(value: UTag()),
            AnyReplacableTag(value: SubTag()),
            AnyReplacableTag(value: SupTag()),
            AnyReplacableTag(value: ExampleTag()),
            AnyReplacableTag(value: SecondaryTag()),
            AnyReplacableTag(value: RemarkTag()),
            AnyReplacableTag(value: ReferenceTag()),
            AnyReplacableTag(value: ColorTag())
        ]
    }
}
