//
//  LocationsDataManager.swift
//  LetsEat
//
//  Created by Nathan Tuala on 6/23/20.
//  Copyright © 2020 Nathan Tuala. All rights reserved.
//

import Foundation

class LocationsDataManager {
    
    fileprivate var items:[String] = []
    
    func fetch() {
        for data in loadData() {
            if let city = data["city"] as? String,
            let state = data["state"] as? String {
              items.append("\(city), \(state)")
            }
        }
    }
        
    
    func numberOfItems() -> Int {
        return items.count
    }
    
    func explore(at index:IndexPath) -> String {
        return items[index.item]
    }
    
    
    fileprivate func loadData() -> [[String: AnyObject]] {
    guard let path = Bundle.main.path(forResource: "Locations",
      ofType: "plist"), let items = NSArray(contentsOfFile: path)
      else {
            return [[:]]
        }
        return items as! [[String:AnyObject]]
    }
}
