//
//  MailContainer.swift
//  Models
//
//  Created by Anton Tkalikov on 21.07.2020.
//  Copyright © 2020 Anton Tkalikov. All rights reserved.
//

#if os(iOS)
import UIKit
public typealias TargetedViewController = UIViewController
#elseif os(macOS)
import AppKit
public typealias TargetedViewController = NSViewController
#endif

public struct MailContainer {
    public let url: URL
    public let controller: TargetedViewController?
    
    public init(url: URL, controller: TargetedViewController?) {
        self.url = url
        self.controller = controller
    }
}
