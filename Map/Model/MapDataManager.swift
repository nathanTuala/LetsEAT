//
//  MapDataManager.swift
//  LetsEat
//
//  Created by Nathan Tuala on 6/25/20.
//  Copyright © 2020 Nathan Tuala. All rights reserved.
//

import Foundation

import MapKit

class MapDataManager: DataManager {
    
    fileprivate var items:[RestaurantItem] = []

    var annotations:[RestaurantItem] {
        return items
    }
    
    func fetch(completion:(_ annotations:[RestaurantItem]) -> ()){
        if items.count > 0 { items.removeAll() }
        for data in load(file: "MapLocations") {
            items.append(RestaurantItem(dict: data))
        }
        completion(items)
    }

    func currentRegion(latDelta:CLLocationDegrees, longDelta:CLLocationDegrees) -> MKCoordinateRegion {
        guard let item = items.first else {
            return MKCoordinateRegion()
    }
        let span = MKCoordinateSpan(latitudeDelta: latDelta,
                   longitudeDelta: longDelta)
        return MKCoordinateRegion(center:item.coordinate, span:span)
    }
    
}
