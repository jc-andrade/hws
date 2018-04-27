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
        
        // Call askQuestion method
        askQuestion()
        
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        
        // This statement automatically randomizes the order
        // of the countries in the array
        countries = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: countries) as! [String]
        
        // two parameters, UIimage, for: .normal means 'standard state of button'
        button1.setImage(UIImage(named:countries[0]), for: .normal)
        button2.setImage(UIImage(named:countries[1]), for: .normal)
        button3.setImage(UIImage(named:countries[2]), for: .normal)
        
        correctAnswer = GKRandomSource.sharedRandom().nextInt(upperBound: 3)
        title = countries[correctAnswer].uppercased()
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        
        if sender.tag == correctAnswer {
            title = "You got it, you dingo!"
            score += 1
        } else {
            title = "Idiot!!!!!!!!"
            score -= 1
        }
        
        let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        // Handler: code that it can execute when the button is tapped. You can also write customer code in there, but we just wanna continue so we call askQuestion
        present(ac, animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

