//
//  ViewController.swift
//  Project4
//
//  Created by Julio Cesar Andrade-Merrow on 5/9/18.
//  Copyright © 2018 Julio Cesar Andrade-Merrow. All rights reserved.
//

import UIKit
import WebKit // We're going to be using WKWebView

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self // Delete is one thing acting in place of another.
        // We're using WKWEbView, and we can tell it that we want to be informed when something
        // Interesting happens.
        // This statement means "When any web page navigation happens, tell me."
        view = webView // We make our 'view' our webView
    }

    override func viewDidLoad() {
        let url = URL(string: "https://www.google.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

