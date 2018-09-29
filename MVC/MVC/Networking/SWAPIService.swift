//
//  SWAPIService.swift
//  MVC
//
//  Created by Paul Nyondo on 07/09/2018.
//  Copyright © 2018 Paul Nyondo. All rights reserved.
//

import Foundation
let baseURL = URL(string: "https://swapi.co/api/")

enum ServiceError: Error {
    case cannotParse
}

class SWAPIService {
    let session = URLSession.shared
    
    func getCategories(queue: DispatchQueue, completion: @escaping (Result<Category>) -> Void) {
        guard let url = baseURL
            else { return }
        session.dataTask(with: url) { (data, response, error) in
            if let error = error {
                queue.async {
                    completion(.failure(error))
                }
            }
            guard
                let data = data,
                let categories = try? JSONDecoder().decode(Category.self, from: data)
                else { completion(.failure(ServiceError.cannotParse)); return }
            queue.async {
                completion(.success(categories))
            }
        }.resume()
    }
    
    func getPlanets(completion: @escaping (Result<Planets>) -> Void) {
    }
    
    func getSpecies(completion: @escaping (Result<Species>) -> Void) {
        
    }
    
    func getVehicles(completion: @escaping (Result<Vehicles>) -> Void) {
    }
    
    func getPeople(completion: @escaping (Result<AllPeople>) -> Void) {
    }
    
    func getFilms(completion: @escaping (Result<Films>) -> Void) {
    }
}

