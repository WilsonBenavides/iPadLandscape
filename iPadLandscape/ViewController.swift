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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        print(UIDevice.current.orientation.isLandscape)
        if UIDevice.current.userInterfaceIdiom == .phone {
            print("iPad running")
        }
    }
}

