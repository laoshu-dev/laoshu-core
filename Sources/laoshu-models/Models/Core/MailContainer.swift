//
//  MailContainer.swift
//  Models
//
//  Created by Anton Tkalikov on 21.07.2020.
//  Copyright © 2020 Anton Tkalikov. All rights reserved.
//

#if os(iOS)
import UIKit
public typealias ViewController = UIViewController
#elseif os(macOS)
import AppKit
public typealias ViewController = NSViewController
#endif

public struct MailContainer {
    public let url: URL
    public let controller: ViewController?
    
    public init(url: URL, controller: ViewController?) {
        self.url = url
        self.controller = controller
    }
}
