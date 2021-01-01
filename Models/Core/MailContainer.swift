//
//  MailContainer.swift
//  Models
//
//  Created by Anton Tkalikov on 21.07.2020.
//  Copyright © 2020 Anton Tkalikov. All rights reserved.
//

import UIKit

public struct MailContainer {
    public let url: URL
    public let controller: UIViewController?
    
    public init(url: URL, controller: UIViewController?) {
        self.url = url
        self.controller = controller
    }
}
