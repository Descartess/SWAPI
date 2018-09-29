//
//  Planets.swift
//  MVC
//
//  Created by Paul Nyondo on 19/09/2018.
//  Copyright © 2018 Paul Nyondo. All rights reserved.
//

import Foundation


struct Planets: Codable {
    var count: Int
    var next: URL?
    var previous: URL?
    var results: [Planet]
}


struct Planet: Codable {
    var name: String
    var diameter: String
    var rotation_period: String
    var orbital_period: String
    var population: String
}
