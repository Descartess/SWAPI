//
//  People.swift
//  MVC
//
//  Created by Paul Nyondo on 19/09/2018.
//  Copyright © 2018 Paul Nyondo. All rights reserved.
//

import Foundation

struct AllPeople: Codable {
    var count: Int
    var next: URL?
    var previous: URL?
    var results: [People]
}


struct People: Codable {
    var name: String
    var height: String
    var mass: String
    var hair_color: String
    var birth_year: String
    var gender: String
}
