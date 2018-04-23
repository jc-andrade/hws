//
//  ViewController.swift
//  Project1
//
//  Created by Julio Cesar Andrade-Merrow on 4/23/18.
//  Copyright © 2018 Julio Cesar Andrade-Merrow. All rights reserved.
//

import UIKit // This file will reference iOS User interface toolkit

class ViewController: UIViewController { // Create new screen of data called viewController based on UIViewController

    var pictures = [String]() // [] means array of Strings, () means create one NOW. (function?)
    
    override func viewDidLoad() { // override = change default behavior
        super.viewDidLoad() // super =  tell Apple's UIViewcontroller to run its own code before I run mine.
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items
        {
            if item.hasPrefix("nssl")
            {
                pictures.append(item)
        
            }
        }
        print(pictures)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
