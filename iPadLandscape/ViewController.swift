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
        if UIDevice.current.userInterfaceIdiom == .pad {
            print("Now iPad is RUNNING...")
            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bgPortraitiPad01")!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("Landscape Transition?... " + "\(UIDevice.current.orientation.isLandscape)")
        if UIDevice.current.userInterfaceIdiom == .pad && UIDevice.current.orientation.isLandscape {
            //print("iPad and Landscape...")
            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bgLandscapeiPad01")!)
        }
        if UIDevice.current.userInterfaceIdiom == .pad && UIDevice.current.orientation.isPortrait {
            //print("iPad and Landscape...")
            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bgPortraitiPad02")!)
        }
        
    }
    
    /*override public var traitCollection: UITraitCollection {
        if UIDevice.current.userInterfaceIdiom == .pad && UIDevice.current.orientation.isPortrait {
            let collections = [UITraitCollection(horizontalSizeClass: .compact), UITraitCollection(verticalSizeClass: .regular)]
            
            return UITraitCollection(traitsFrom: collections)
        }
        return super.traitCollection
    }*/
}

