//
//  ViewController.swift
//  iPadLandscape
//
//  Created by willix on 4/23/18.
//  Copyright © 2018 willix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("console message test...")
        
        if UIDevice.current.userInterfaceIdiom == .phone { print("iPhone is running") }
        
        if UIDevice.current.userInterfaceIdiom == .pad { print("Now iPad is RUNNING...") }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        print("Landscape Transition?... " + "\(UIDevice.current.orientation.isLandscape)")
    }
}

