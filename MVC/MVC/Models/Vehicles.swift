//
//  Vehicles.swift
//  MVC
//
//  Created by Paul Nyondo on 19/09/2018.
//  Copyright © 2018 Paul Nyondo. All rights reserved.
//

import Foundation


struct Vehicles: Codable {
    var count: Int
    var next: URL?
    var previous: URL?
    var results: [Vehicle]
}


struct Vehicle: Codable {
    var name: String
    var model: String
    var manufacturer: String
    var vehicle_class: String
}
