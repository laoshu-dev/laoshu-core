import Foundation

enum TagIdentifier {
    case margin(Int?)
    case color(String?)
    case example
    case secondary
    case remark

    var value: String {
        switch self {
        case .margin(let power):
            let value = "margin"
            if let power = power {
                return "\(value)\(String(power))"
            }
            return value
        case .color(let custom):
            return "color\(custom ?? "")"
        case .example:
            return "example"
        case .secondary:
            return "secondary"
        case .remark:
            return "remark"
        }
    }
    
    var tagIdentifierValue: String {
        return " class=\"\(value)\""
    }
}


