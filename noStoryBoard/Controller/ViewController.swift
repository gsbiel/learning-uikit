//
//  ViewController.swift
//  noStoryBoard
//
//  Created by user164622 on 2/8/20.
//  Copyright © 2020 user164622. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginScreenView = LoginScreen(frame:UIScreen.main.bounds)
        self.view.addSubview(loginScreenView)
        
        
        guard let navBar = navigationController?.navigationBar else {
            fatalError("Navigation Controller does not exist.")
        }
        
        navBar.tintColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
        navBar.barTintColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        navBar.topItem?.title = "Login Screen"
    }
    
}

