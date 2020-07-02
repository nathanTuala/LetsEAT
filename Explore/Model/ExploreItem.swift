//
//  ExploreItem.swift
//  LetsEat
//
//  Created by Nathan Tuala on 6/22/20.
//  Copyright © 2020 Nathan Tuala. All rights reserved.
//

import Foundation

struct ExploreItem {
    var name: String
    var image: String
}

extension ExploreItem {
    init(dict:[String:AnyObject]){
        self.name = dict["name"] as! String
        self.image = dict["image"] as! String
    }
}
