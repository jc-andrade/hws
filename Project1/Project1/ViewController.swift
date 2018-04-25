//
//  ViewController.swift
//  Project1
//
//  Created by Julio Cesar Andrade-Merrow on 4/23/18.
//  Copyright © 2018 Julio Cesar Andrade-Merrow. All rights reserved.
//

import UIKit // This file will reference iOS User interface toolkit

class ViewController: UITableViewController { // Create new screen of data called viewController based on UITableViewController

    var pictures = [String]() // [] means array of Strings, () means create one NOW. (function?)
    
    override func viewDidLoad() // override = change default behavior
    {
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
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath) // Recycle cells
        cell.textLabel?.text = pictures[indexPath.row]
        return cell;
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count // -> Int means this method will return an int.
        // The _ is here as a placeholder for the first parameter passed.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 1: try loading 'Detail' view controller and type cast to DetailViewController
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            // Success! Set its selectedImage property
            vc.selectedImage = pictures[indexPath.row]
            
            // 3: push onto Nav Controller
            navigationController?.pushViewController(vc, animated: true)
        }
        
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
