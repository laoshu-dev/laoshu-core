//
//  Tag.swift
//  Models
//
//  Created by Anton Tkalikov on 25.05.2020.
//  Copyright © 2020 Anton Tkalikov. All rights reserved.
//

import Foundation

public class Tag {
    public let index: String.Index
    public let state: State
    public let kind: Kind
    
    public init(index: String.Index, state: Tag.State, kind: Tag.Kind) {
        self.index = index
        self.state = state
        self.kind = kind
    }
}

extension Tag {
    public enum State {
        case opened
        case closed
    }
    
    public enum Kind: Equatable {
        // Formating
        case b, i, u, c(ColorPreset?), bg(ColorPreset?), sup, sub, accent
        case m(Int?)
        
        // Structure
        case p, t, secondary
        
        // Searching
        case ex, com, trn, trn1, trs, lang
        
        // Other
        case ref
        
        public var asString: String {
            switch self {
            case .b:
                return "b"
            case .i:
                return "i"
            case .u:
                return "u"
            case .c:
                return "c"
            case .bg:
                return "bg"
            case .sup:
                return "sup"
            case .sub:
                return "sub"
            case .accent:
                return "'"
            case .m(let int):
                if let int = int {
                    return "m\(int)"
                } else {
                    return "m"
                }
            case .p:
                return "p"
            case .t:
                return "t"
            case .secondary:
                return "*"
            case .ex:
                return "ex"
            case .com:
                return "com"
            case .trn:
                return "trn"
            case .trn1:
                return "trn1"
            case .trs:
                return "!trs"
            case .lang:
                return "lang"
            case .ref:
                return "ref"
            }
        }
        
        // Formating
        public static var formatingTags: [Kind] = [.b, .i, .u, .c(nil), .bg(nil), .sup, .sub, .accent, .m(nil)]
        public static var mDigitTags: [Kind] = [.m(0), .m(1), .m(2), .m(3), .m(4), .m(5), .m(6), .m(7), .m(8), .m(9)]
        // Structure
        public static var structureTags: [Kind] = [.p, .t, .secondary]
        // Searching
        public static var searchingTags: [Kind] = [.ex, .com, .trn, .trn1, .trs, .lang]
        // Other
        public static var otherTags: [Kind] = [.ref]
        
        public static var allCases: [Kind] = {
            var tags: [Kind] = []
            tags.append(contentsOf: formatingTags)
            tags.append(contentsOf: mDigitTags)
            tags.append(contentsOf: structureTags)
            tags.append(contentsOf: searchingTags)
            tags.append(contentsOf: otherTags)
            return tags
        }()
        
        public static func from(string: String) -> Kind? {
            if string.hasPrefix("\(Kind.c(nil).asString) "), let color = string.split(whereSeparator: \.isWhitespace).last {
                return .c(ColorPreset(rawValue: String(color)))
            }
            
            if string.hasPrefix("\(Kind.bg(nil).asString) "), let color = string.split(whereSeparator: \.isWhitespace).last {
                return .bg(ColorPreset(rawValue: String(color)))
            }
            
            return allCases.first { $0.asString == string }
        }
        
        public static func == (lhs: Self, rhs: Self) -> Bool {
            let mDigitTagsAsString = mDigitTags.map { $0.asString }
            if mDigitTagsAsString.contains(lhs.asString), rhs.asString == Kind.m(nil).asString { return true }
            if mDigitTagsAsString.contains(rhs.asString), lhs.asString == Kind.m(nil).asString { return true }
            
            return lhs.asString == rhs.asString
        }
    }
}
