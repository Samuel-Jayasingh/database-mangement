//
//  ViewController.swift
//  database-managing-app
//
//  Created by Samuel Jayasingh on 18/01/23.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://drive.google.com/drive/folders/11eKgbKgj3GLBFhamO40-Uhu724EN1UNb?usp=share_link")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
