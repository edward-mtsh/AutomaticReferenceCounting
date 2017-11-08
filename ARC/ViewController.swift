//
//  ViewController.swift
//  ARC
//
//  Created by Edward Mtshweni on 2017/11/08.
//  Copyright © 2017 Edward Mtshweni. All rights reserved.
//

import UIKit

class ViewController: UIViewController
    {
    private var _contactOne:Contact?
    private var _contactTwo:Contact?
    private var _contactThree:Contact?
    
    override func viewDidLoad()
        {
        super.viewDidLoad()
            
        //We have just created one strong reference to Contact
        _contactOne = Contact(name:"Edward", number:"0724761234")
            
        //This makes additional two strong references to Contact
        _contactTwo = _contactOne
        _contactThree = _contactOne
         
        //delete _contactOne and two, we still have strong refence to Contact
        //_contactThree still has strong refernce to Contact and the memory for Contact wont be removed
        _contactOne = nil
        _contactTwo = nil
            
        //Now delete _contactThree. Contact has beeing deinitiazed and removed from memory
        _contactThree = nil
        }

    override func didReceiveMemoryWarning()
        {
        super.didReceiveMemoryWarning()
        }
    }

