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
        
    }
    
}

