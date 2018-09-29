//
//  Species.swift
//  MVC
//
//  Created by Paul Nyondo on 19/09/2018.
//  Copyright © 2018 Paul Nyondo. All rights reserved.
//

import Foundation

struct Species: Codable {
    var count: Int
    var next: URL?
    var previous: URL?
    var results: [Specie]
}

struct Specie: Codable {
    var name: String
    var classification: String
    var designation: String
    var average_height: String
    var average_lifespan: String
    var lanaguage: String
}
