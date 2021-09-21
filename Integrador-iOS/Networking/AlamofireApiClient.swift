//
//  AlamofireApiClient.swift
//  Integrador-iOS
//
//  Created by Sebastian Andres Amaya Grez on 20-09-21.
//

import Foundation
import Alamofire

class AlamofireApiClient {

    
    func get(url: String, completion: @escaping (Result<Data?, AFError>) -> Void) {
            AF.request(url).response { response in
                completion(response.result) }
        }
    
    
}
