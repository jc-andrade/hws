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
        
        title = selectedImage
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated) // "tell my parent data type that these methods were called"
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersHomeIndicatorAutoHidden() -> Bool {
        return navigationController?.hidesBarsOnTap ?? false
        // ?? is 'nil coalescing operator
        // "if nav controller doesn't exist, send false rather than trying to read hidesBarOnTap properpty
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
