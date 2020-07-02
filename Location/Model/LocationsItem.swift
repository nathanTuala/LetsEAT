//
//  LocationsItem.swift
//  LetsEat
//
//  Created by Nathan Tuala on 6/23/20.
//  Copyright © 2020 Nathan Tuala. All rights reserved.
//

import Foundation

struct LocationsItem {
    var city: String
    var state: String
}

extension LocationsItem {
    init(dict:[String:AnyObject]){
        self.city = dict["city"] as! String
        self.state = dict["state"] as! String
    }
}

