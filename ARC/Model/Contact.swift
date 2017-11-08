//
//  Contact.swift
//  ARC
//
//  Created by Edward Mtshweni on 2017/11/08.
//  Copyright © 2017 Edward Mtshweni. All rights reserved.
//

import UIKit

class Contact
    {
    let name:String
    let number:String
    
    init(name:String, number:String)
        {
        self.name = name
        self.number = number
        print("\(self.name) uses this number \(self.number)")
        }
    
    deinit
        {
        print("We lost our contact")
        }
    }
