//
//  Suggestion.swift
//  Integrador-iOS
//
//  Created by Sebastian Andres Amaya Grez on 21-09-21.
//

import Foundation


struct Suggestion: Codable {
    
    
    let activity: String
//    let type: String
//    let participants: Int
//    let price: Double
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        activity = try container.decode(String.self, forKey: .activity)
    }
    
    
}
