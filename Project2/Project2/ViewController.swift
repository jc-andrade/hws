//
//  ViewController.swift
//  Project2
//
//  Created by Julio Cesar Andrade-Merrow on 4/27/18.
//  Copyright © 2018 Julio Cesar Andrade-Merrow. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add countries to array
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        // Button 1 properties
        button1.layer.borderWidth = 1
        button1.layer.borderColor = UIColor.lightGray.cgColor
        
        // Button 2 properties
        button2.layer.borderWidth = 1
        button2.layer.borderColor = UIColor.lightGray.cgColor
        
        // Button 3 properties
        button3.layer.borderWidth = 1
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        
        // This statement automatically randomizes the order
        // of the countries in the array
        countries = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: countries) as! [String]
        
        // Call askQuestion method
        askQuestion()
        
    }
    
    func askQuestion() {
        
        title = countries[correctAnswer].uppercased()
       
        // two parameters, UIimage, for: .normal means 'standard state of button'
        button1.setImage(UIImage(named:countries[0]), for: .normal)
        button2.setImage(UIImage(named:countries[1]), for: .normal)
        button3.setImage(UIImage(named:countries[2]), for: .normal)
        
        correctAnswer = GKRandomSource.sharedRandom().nextInt(upperBound: 3)
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

