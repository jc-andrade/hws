//
//  DetailViewController.swift
//  Project1
//
//  Created by Julio Cesar Andrade-Merrow on 4/25/18.
//  Copyright © 2018 Julio Cesar Andrade-Merrow. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
   @IBOutlet var imageView: UIImageView!
    // @IBOutlet: connection between this line and IB
    // ! = may or may not be there but will be when we want otuse.
    var selectedImage: String? // Optional string bc when VC is created, it won't exists. 
    
    override func viewDidLoad() {
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
