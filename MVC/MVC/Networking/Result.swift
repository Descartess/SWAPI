//
//  Result.swift
//  MVC
//
//  Created by Paul Nyondo on 29/09/2018.
//  Copyright © 2018 Paul Nyondo. All rights reserved.
//

import Foundation

enum Result<T> {
    case failure(Error)
    case success(T)
}
