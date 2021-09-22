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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tryAnotherButton.layer.cornerRadius = 5
        tryAnotherButton.clipsToBounds = true
        
        if title! != "Random" {
            
            categoryImage.isHidden = true
            categoryLabel.isHidden = true
        }
    }


    @IBAction func tryAnotherButtonTapped(_ sender: Any) {
        
    }
    
}
