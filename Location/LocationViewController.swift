//
//  LocationViewController.swift
//  LetsEat
//
//  Created by Nathan Tuala on 6/22/20.
//  Copyright © 2020 Nathan Tuala. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController, UITableViewDataSource {
    
    let manager = LocationsDataManager()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return manager.numberOfItems()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:
                   "locationCell", for: indexPath) as UITableViewCell
        let item = manager.explore(at: indexPath)
        cell.textLabel?.text = item
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.fetch()
        // Do any additional setup after loading the view.
        
    }
}
