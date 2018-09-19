//
//  SWAPIService.swift
//  MVC
//
//  Created by Paul Nyondo on 07/09/2018.
//  Copyright © 2018 Paul Nyondo. All rights reserved.
//

import Foundation
let baseURL = "https://swapi.co/api/"

enum Result<T>{
    case error(Error)
    case success(T)
}

enum ServiceError: Error {
    case cannotParse
}

class SWAPIService {
    let session = URLSession.shared
    
    func getCategories(completion: @escaping (Result<[Category]>) -> Void) {
    }
    
    func getPlanets(completion: @escaping (Result<[Planet]>) -> Void) {
    }
    
    func getSpecies(completion: @escaping (Result<[Specie]>) -> Void) {
        
    }
    
    func getVehicles(completion: @escaping (Result<[Vehicle]>) -> Void) {
    }
    
    func getPeople(completion: @escaping (Result<[People]>) -> Void) {
    }
    
    func getFilms(completion: @escaping (Result<[Film]>) -> Void) {
    }
}

