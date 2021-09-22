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


    func getSuggestion(completion: @escaping () -> Void) {
        suggestionService.getSuggestion { [weak self] suggestion
            in
            self?.suggestion = suggestion
                completion()
        }
    }

}
