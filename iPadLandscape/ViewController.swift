//
//  ViewController.swift
//  iPadLandscape
//
//  Created by willix on 4/23/18.
//  Copyright © 2018 willix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnPlay: UIButton!
    @IBOutlet weak var btnReset: UIButton!
    @IBOutlet weak var btnPause: UIButton!
    var timer = Timer()
    var counter = 0.0
    var isRunning = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("console message test...")
        lblTitle.text = "\(counter)"
        btnPlay.isEnabled = true
        btnPause.isEnabled = false
        
        
        if UIDevice.current.userInterfaceIdiom == .phone { print("iPhone is running") }
        if UIDevice.current.userInterfaceIdiom == .pad {
            print("Now iPad is RUNNING...")
            bgImage.backgroundColor = UIColor(patternImage: UIImage(named: "iPadPortrait01")!)
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
      
            bgImage.backgroundColor = UIColor(patternImage: UIImage(named: "iPadLandscape02")!)
            print("height: " + "\(UIScreen.main.bounds.height)" + ", width: " + "\(UIScreen.main.bounds.width)")
        }
        if UIDevice.current.userInterfaceIdiom == .pad && UIDevice.current.orientation.isPortrait {
            //print("iPad and Landscape...")
            bgImage.backgroundColor = UIColor(patternImage: UIImage(named: "iPadPortrait01")!)
        }
    }
    
    @IBAction func actionPlay(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        btnPlay.isEnabled = false
        btnPause.isEnabled = true
        isRunning = true
    }
    
    @objc func UpdateTimer() {
        counter += 0.1
        lblTitle.text = String(format: "%.1f", counter)
    }
    @IBAction func actionReset(_ sender: UIButton) {
        timer.invalidate()
        counter = 0
        lblTitle.text = "\(counter)"
        btnPlay.isEnabled = true
        btnPause.isEnabled = false
        isRunning = false
    }
    @IBAction func actionPause(_ sender: UIButton) {
        timer.invalidate()
        btnPlay.isEnabled = true
        btnPause.isEnabled = false
    }
    
}

