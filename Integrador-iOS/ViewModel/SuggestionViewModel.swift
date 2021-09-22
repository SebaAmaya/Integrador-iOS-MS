//
//  SuggestionViewModel.swift
//  Integrador-iOS
//
//  Created by Sebastian Andres Amaya Grez on 22-09-21.
//

import Foundation
import UIKit

class SuggestionViewModel {

    private let suggestionService: ServiceManager

    var suggestion: Suggestion?

    init(suggestionServices: ServiceManager) {
        self.suggestionService = suggestionServices
    }


    func getSuggestion(price: Double, participants: String, activity: String?, completion: @escaping (Suggestion) -> Void) {
        suggestionService.getSuggestion(price: price, participants: participants, activity: activity) { [weak self] suggestion
            in
            self?.suggestion = suggestion
            completion(suggestion)
        }
    }
}
