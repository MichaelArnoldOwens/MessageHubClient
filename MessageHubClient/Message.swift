//
//  Message.swift
//  MessageHubClient
//
//  Created by Michael Owens on 2/13/15.
//  Copyright (c) 2015 Michael Owens. All rights reserved.
//

import UIKit

class Message: NSObject {
    let text : String
    let userName : String
    
    init(text: String, userName: String) {
        self.text = text
        self.userName = userName
    }
    
}
