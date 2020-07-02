//
//  ExploreViewController.swift
//  LetsEat
//
//  Created by Nathan Tuala on 6/18/20.
//  Copyright © 2020 Nathan Tuala. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    // This creates and returns an instance of the collection view section header to be displayed on the screen
    func collectionView(_ collectionView: UICollectionView,
    viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath)
    -> UICollectionReusableView {
     let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
     withReuseIdentifier: "header", for: indexPath)
     return headerView
    }
    //This tells the collection view how many cells to display
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return manager.numberOfItems()
    }
    // This tells the collection view what to display in each collection view cell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "exploreCell", for: indexPath) as! ExploreCellCollectionViewCell
        let item = manager.explore(at: indexPath)
        cell.lblName.text = item.name
        cell.imgExplore.image = UIImage(named: item.image)
        return cell
    }
    
    
    // This is a connection between the collection view in the explore scene and ExploreViewController class.
    // This is also a variable of class UICollectionView
    @IBOutlet weak var collectionView: UICollectionView!
    let manager = ExploreDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.fetch()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindLocationCancel(segue:UIStoryboardSegue){
    }
    
}
