//
//  SwipingController.swift
//  iPadLandscape
//
//  Created by willix on 3/05/18.
//  Copyright © 2018 willix. All rights reserved.
//

import UIKit

struct Page {
    
    let imageName: String
    let headerText: String
}

class SwipingController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let pages = [
        Page(imageName: "joker", headerText: "Join use today in out fun and games!"),
        Page(imageName: "batgirl", headerText: "ubscribe and get coupons o nour daily events"),
        Page(imageName: "catgirl", headerText: "VIP members special services")
    ]
    
    //let imageNames = ["joker", "batgirl", "catgirl"]
    //let headerStrings = ["Join use today in out fun and games!", "Subscribe and get coupons o nour daily events", "VIP members special services"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .white
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView?.isPagingEnabled = true
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PageCell
        
        let page = pages[indexPath.item]
        cell.jokerImageView.image = UIImage(named: page.imageName)
        cell.descriptionTextView.text = page.headerText
        //let imageName = pages[indexPath.item]
        //cell.jokerImageView.image = UIImage(named: imageName)
        //cell.descriptionTextView.text = headerStrings[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
}
