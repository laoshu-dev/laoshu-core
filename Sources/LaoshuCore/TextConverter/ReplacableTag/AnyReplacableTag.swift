import Foundation

struct AnyReplacableTag: ReplacableTag {
    let value: ReplacableTag
    
    init<Tag: ReplacableTag>(value: Tag) {
        self.value = value
    }
    
    func replacedTags(in string: String) -> String {
        value.replacedTags(in: string)
    }
}
