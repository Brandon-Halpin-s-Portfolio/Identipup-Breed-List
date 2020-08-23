//
//  InformationViewController.swift
//  Identipup
//
//  Created by Courant Guest on 11/29/19.
//  Copyright © 2019 Nahckjoon Kim. All rights reserved.
//

import UIKit
import WebKit


//Sets up the Information View Controller which is brought up when a tab is clicked in the Breed Table View Controller, 
//as well as the Web View that takes the user to the American Kennel Club (AKC) page for the breed they requested
class InformationViewController: UIViewController, WKUIDelegate {
    
    var myURLString: String = ""
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Sets the design for the pop up Information controller and web view
        self.view.backgroundColor = UIColor.turqoise
        
        self.myLabel.clipsToBounds = true
        self.myLabel.layer.cornerRadius = 5
        self.myLabel.layer.borderWidth = 2
        self.myLabel.layer.borderColor = UIColor(hexString: "003049")!.cgColor
        self.myLabel.backgroundColor = UIColor.offWhite
        
        //Sets the destination for the web view and launches the web page
        let myURL = URL(string: myURLString)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
    }
}
