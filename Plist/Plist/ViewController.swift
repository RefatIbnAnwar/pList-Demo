//
//  ViewController.swift
//  Plist
//
//  Created by MobioApp on 5/24/17.
//  Copyright © 2017 MobioApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var plistDict : NSDictionary?
        let path = Bundle.main.path(forResource: "CountryList", ofType: "plist")
        plistDict = NSDictionary(contentsOfFile : path!)
        
        let countryDict = plistDict?.value(forKey: "Country") as! NSDictionary?
        for each in countryDict! {
            print("The capital of \(each.key) is \(each.value)")
        }
        
    }

    
    // cheta
    /*let fileManager = NSFileManager.defaultManager()
    
    let documentDirectory = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
    let path = documentDirectory.stringByAppendingString("/profile.plist")
    
    if(!fileManager.fileExistsAtPath(path)){
    print(path)
    
    let data : [String: String] = [
    "Company": "My Company",
    "FullName": "My Full Name",
    "FirstName": "My First Name",
    "LastName": "My Last Name",
    // any other key values
    ]
    
    let someData = NSDictionary(dictionary: data)
    let isWritten = someData.writeToFile(path, atomically: true)
    print("is the file created: \(isWritten)")
    
    
    
    }else{
    print("file exists")
    }*/
    
//        var plistDict : NSDictionary?
//        let path = Bundle.main.path(forResource: "value", ofType: "plist")
//        plistDict = NSDictionary(contentsOfFile : path!)
//        
//        plistDict = plistDict?.value(forKey: "DataSoft") as! NSDictionary?
//        
//        if let plistvalue = plistDict {
//            for each in plistvalue {
//                let KEY = each.key as! String
//                if KEY == "iOS" {
//                    let VALUES = (each.value as! NSDictionary)
//                    print(VALUES.object(forKey: "Sami")!)
//                }
//            }
//        }
//    }
}

