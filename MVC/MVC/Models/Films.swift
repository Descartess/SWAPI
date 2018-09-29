//
//  Films.swift
//  MVC
//
//  Created by Paul Nyondo on 19/09/2018.
//  Copyright © 2018 Paul Nyondo. All rights reserved.
//

import Foundation

struct Films: Codable {
    var count: Int
    var next: URL?
    var previous: URL?
    var results: [Film]
}

struct Film: Codable {
    var title: String
    var episode_id: Int
    var opening_crawl: String
    var director: String
    var release_date: String
    var producer: String
}
