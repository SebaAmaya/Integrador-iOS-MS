//
//  SuggestionViewController.swift
//  Integrador-iOS
//
//  Created by Sebastian Andres Amaya Grez on 21-09-21.
//

import UIKit

class SuggestionViewController: UIViewController {

    
    @IBOutlet weak var activityLabel: UILabel!
    @IBOutlet weak var participantsLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var tryAnotherButton: UIButton!
    
    private var viewModel: SuggestionViewModel?
    
    var suggestion: Suggestion?
    var price: Double?
    
    var textExample: (String?,String?)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tryAnotherButton.layer.cornerRadius = 5
        tryAnotherButton.clipsToBounds = true
        
        viewModel = SuggestionViewModel(suggestionServices: ServiceManager())
        
        participantsLabel.text = textExample.0
        price = Double(textExample.1!)!
        if price == 0 {
            priceLabel.text = "Free"
        } else if price! > 0 && price! <= 0.3 {
            priceLabel.text = "Low"
        }else if price! > 0.3 && price! <= 0.6 {
            priceLabel.text = "Medium"
        }else {
            priceLabel.text = "High"
        }
        
        if title! != "Random" {
            
            categoryImage.isHidden = true
            categoryLabel.isHidden = true
            getSuggestion()
            
        } else {
            
            getSuggestionRandom()
            
        }
        
    }

    @IBAction func tryAnotherButtonTapped(_ sender: Any) {
        if title! != "Random" {
            
            getSuggestion()
            
        } else {
            
            getSuggestionRandom()
        }
        
    }
    
    func getSuggestionRandom (){
        
        viewModel?.getSuggestion(price: price!, participants: participantsLabel.text!, activity: nil, completion: {suggestion in
            
            self.activityLabel.text = suggestion.activity
            self.categoryLabel.text = suggestion.type
        })
        
    }
    
    func getSuggestion() {
        
        viewModel?.getSuggestion(price: price!, participants: participantsLabel.text!, activity: title!.lowercased(), completion: { suggestion in
            
            self.activityLabel.text = suggestion.activity
            
        })
    }
    
}
